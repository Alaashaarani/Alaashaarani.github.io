# Notes
+ General local setup:
  + Follow the instructions here to install rvm https://github.com/rvm/ubuntu_rvm
  + To set this up, install ruby 2.6.3 with `rvm install 2.6.3`
    + If this errors, see below - likely caused by a known incompatibility with ruby 2.X and openssl
  + Install bundler `gem install bundler`
  + Navigate to this directory and run `bundle install`
    + If this errors, need to use a different version of bundler `gem install bundler:2.3.10`
  + In the future, use `rvm use 2.6.3` to re-activate this environment

+ To test locally, navigate to this directory and run `bundle exec jekyll serve`
+ To update the `Gemfile.lock` file (to fix old dependency issues)
  + Delete the old `Gemfile.lock`
  + Navigate to this directory and run `bundle install`
  + There should be a new `Gemfile.lock` with the updated dependencies

# Documentation
+ Multiple Paginate example ([reference](https://github.com/scandio/jekyll-paginate-multiple-example
))
+ Deploying a jekyll blog with plugins around GitHub whitelist ([reference](http://joshfrankel.me/blog/deploying-a-jekyll-blog-to-github-pages-with-custom-plugins-and-travisci/))
+ To update site, push to source branch (Travis will update repo)
+ To update dependency list, remove Gemfile.lock and run `bundle install` within this directory

# Troubleshooting
+ If you get errors with an invalid token, double-check that TravisCI has an environment variable GITHUB_TOKEN with a properly set personal access token
+ `Error running '__rvm_make -j8', ubuntu` - following [this link](https://deanpcmad.com/2024/installing-older-ruby-versions-on-ubuntu-24-04-and-22-04/), 
   + `wget https://www.openssl.org/source/openssl-1.1.1w.tar.gz`
   + `tar zxvf openssl-1.1.1w.tar.gz`
   + `export OPENSSL=$HOME/.openssl/openssl-1.1.1w`
   + `cd openssl-1.1.1w`
   + `./config --prefix=$OPENSSL --openssldir=$OPENSSL`
   + `make`
   + `make test`
   + `make install`


# Features to be added
+ Image zooming/gallery
+ More dynamic homepage
+ Comments section
+ Fix display image
+ Last updated date in footer
