#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  scripts/optimize-images.sh [options]

Options:
  --src DIR          Source image directory. Default: img
  --out DIR          Output directory. Default: img-optimized
  --format FORMAT   webp or avif. Default: webp
  --width PX        Max width for proportional resize. Default: 1200
  --height PX       Max height for proportional resize. Default: 900
  --quality N       WebP quality, 1-100. Default: 78
  --crf N           AVIF CRF, lower is higher quality. Default: 35
  --exact WxH       Force every output to the same dimensions, cropped center.
  --force           Overwrite existing optimized files.
  --help            Show this help.

Examples:
  scripts/optimize-images.sh
  scripts/optimize-images.sh --force
  scripts/optimize-images.sh --format avif --out img-avif
  scripts/optimize-images.sh --format webp --exact 900x600
EOF
}

src_dir="img"
out_dir="img-optimized"
format="webp"
max_width="1200"
max_height="900"
quality="78"
crf="35"
exact_size=""
force="false"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --src)
      src_dir="$2"
      shift 2
      ;;
    --out)
      out_dir="$2"
      shift 2
      ;;
    --format)
      format="$2"
      shift 2
      ;;
    --width)
      max_width="$2"
      shift 2
      ;;
    --height)
      max_height="$2"
      shift 2
      ;;
    --quality)
      quality="$2"
      shift 2
      ;;
    --crf)
      crf="$2"
      shift 2
      ;;
    --exact)
      exact_size="$2"
      shift 2
      ;;
    --force)
      force="true"
      shift
      ;;
    --help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

if [[ "$format" != "webp" && "$format" != "avif" ]]; then
  echo "--format must be webp or avif" >&2
  exit 1
fi

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "ffmpeg is required but was not found." >&2
  exit 1
fi

if [[ ! -d "$src_dir" ]]; then
  echo "Source directory not found: $src_dir" >&2
  exit 1
fi

mkdir -p "$out_dir"

if [[ -n "$exact_size" ]]; then
  if [[ ! "$exact_size" =~ ^([0-9]+)x([0-9]+)$ ]]; then
    echo "--exact must be in WxH form, for example 900x600" >&2
    exit 1
  fi
  exact_width="${BASH_REMATCH[1]}"
  exact_height="${BASH_REMATCH[2]}"
  vf="scale=${exact_width}:${exact_height}:force_original_aspect_ratio=increase,crop=${exact_width}:${exact_height},setsar=1"
else
  vf="scale=w='if(gt(iw/${max_width},ih/${max_height}),min(${max_width},iw),-2)':h='if(gt(iw/${max_width},ih/${max_height}),-2,min(${max_height},ih))',setsar=1"
fi

count=0

while IFS= read -r -d '' src; do
  rel="${src#"$src_dir"/}"
  rel_no_ext="${rel%.*}"
  dest="$out_dir/$rel_no_ext.$format"

  mkdir -p "$(dirname "$dest")"

  if [[ -f "$dest" && "$force" != "true" ]]; then
    printf 'Skipped existing %s\n' "$dest"
    continue
  fi

  if [[ "$format" == "webp" ]]; then
    ffmpeg -nostdin -y -hide_banner -loglevel error \
      -i "$src" \
      -vf "$vf" \
      -frames:v 1 \
      -c:v libwebp \
      -quality "$quality" \
      -compression_level 6 \
      -preset picture \
      "$dest"
  else
    ffmpeg -nostdin -y -hide_banner -loglevel error \
      -i "$src" \
      -vf "$vf" \
      -frames:v 1 \
      -c:v libaom-av1 \
      -still-picture 1 \
      -crf "$crf" \
      -b:v 0 \
      -cpu-used 6 \
      "$dest"
  fi

  count=$((count + 1))
  printf 'Optimized %s -> %s\n' "$src" "$dest"
done < <(find "$src_dir" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' \) -print0)

echo
echo "Optimized $count images into $out_dir as $format."
du -sh "$src_dir" "$out_dir"
