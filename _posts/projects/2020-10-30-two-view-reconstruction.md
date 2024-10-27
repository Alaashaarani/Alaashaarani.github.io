---
layout: post
title: Image-based 3D reconstruction
subtitle: Creating 3D pointclouds from 2D photos
image: /img/projects/comprobo/cv-cover-img.png
share-img: /img/projects/comprobo/cv-cover-img.png
tags: [Computational-Robotics]
---

For our [open-ended computer vision project](https://comprobo20.github.io/assignments/computer_vision_project) in my [Computational Robotics course](https://comprobo20.github.io/), my project partner and I wanted to work on a project related to localization. The idea of SLAM in unstructured environments was pretty interesting to us, particularly the step where the pose of the camera is estimated relative to a newly-constructed map of the environment. Implementing a fully-fledged monocular SLAM project would be too ambitious for this brief 2-week-long project, so we decided to focus on creating a 3D reconstruction from still images. This process is fairly similar to the camera pose estimation step in monocular SLAM algorithms, but not needing to deal with challenges such as loop closure or scale allowed us to focus on the process of how to get from 2D to 3D data.

Project Partner: Everardo Gonzalez

## Project Results
Ultimately, we were able to get a 3D reconstruction with two images on both a [publicly-available dataset](https://github.com/openMVG/SfM_quality_evaluation/tree/master/Benchmarking_Camera_Calibration_2008/fountain-P11/images) where the camera calibration matrices were provided, and with our own dataset which we recorded with an Xbox 360 Kinect. Photos of our results are shown below:

#### Input Images - standard dataset:
<center>
  <figure>
    {% include overlay.html
      file="https://github.com/AmyPhung/computer_vision/blob/main/img/fountain0.jpg?raw=true"
      padding-top="5px"
      width="45%"
      id="fountain0"%}
    {% include overlay.html
      file="https://github.com/AmyPhung/computer_vision/blob/main/img/fountain1.jpg?raw=true"
      padding-top="5px"
      width="45%"
      id="fountain1"%}
    <figcaption style="padding-top:5px;width:70%">Fountain input images (look carefully - they have slightly different perspectives!)</figcaption>
  </figure>
</center>

#### Output pointcloud and computed camera positions  - standard dataset:
<center>
  <figure>
    {% include overlay.html
      file="https://github.com/AmyPhung/computer_vision/blob/main/img/fountain_result.png?raw=true"
      padding-top="5px"
      width="100%"
      id="result"%}
    <figcaption style="padding-top:5px;width:70%">3D Reconstruction Results displayed in RVIZ</figcaption>
  </figure>
</center>

Unfortunately, we didn't have a "ground truth" 3D scan of the fountain or known locations of our camera when these photos were taken, which meant we couldn't compute quantitative metrics to evaluate our results. However, we can qualitatively see that the results look pretty good - the wall behind the fountain appears fairly flat, and notable features like the ornament above the fountain, the fountain centerpiece, and the black and white sign in the bottom right are distinctly visible.

Qualitatively, the relative position of the camera across the two images also looks good. In OpenCV, the x-axis (red) points to the right, the y-axis (green) points down, and the z-axis (blue) points directly into the screen (this is illustrated in the image below)

<center>
  <figure>
    {% include overlay.html
      file="https://docs.nvidia.com/isaac/archive/2019.1/_images/coord-frame-camera-frame.png"
      padding-top="5px"
      width="60%"
      id="camera-axes"%}
    <figcaption style="padding-top:5px;width:70%">Camera Axes (
      <a href="https://docs.nvidia.com/isaac/archive/2019.1/packages/perception/doc/coord_frame.html">image source</a>
      )</figcaption>
  </figure>
</center>

Looking at the input images, we expect the orientation of the camera's axes across the two images to be fairly similar, with the z-axes to be slightly pointed towards each other. Since the photos are upright, we also expect that the x-axis will point to the right and the y-axis will point downwards. Looking at our computed camera positions relative to our output pointcloud, we can see that these appear to match the position and orientation we expected, providing confidence that our implementation was successful.


#### Input Images - custom dataset:
<center>
  <figure>
    {% include overlay.html
      file="https://github.com/AmyPhung/computer_vision/blob/main/img/shelf3.png?raw=true"
      padding-top="5px"
      width="45%"
      id="shelf3"%}
    {% include overlay.html
      file="https://github.com/AmyPhung/computer_vision/blob/main/img/shelf4.png?raw=true"
      padding-top="5px"
      width="45%"
      id="shelf4"%}
    <figcaption style="padding-top:5px;width:70%">Our custom test images - taken with an old Xbox 360 Kinect sitting around the house</figcaption>
  </figure>
</center>

#### Output pointcloud and computed camera positions - custom dataset:
<center>
  <figure>
    {% include overlay.html
      file="https://github.com/AmyPhung/computer_vision/blob/main/img/shelf_output.png?raw=true"
      padding-top="5px"
      width="46%"
      id="shelf_output"%}
    {% include overlay.html
      file="https://github.com/AmyPhung/computer_vision/blob/main/img/shelf_output_top.png?raw=true"
      padding-top="5px"
      width="30%"
      id="shelf_output_top"%}
    <figcaption style="padding-top:5px;width:70%">3D Reconstruction Results displayed in RVIZ (left: side view, right: top-down view)</figcaption>
  </figure>
</center>


In the left view it's evident that the camera locations look about as we'd expect from the images, but it's difficult to tell the quality of the pointcloud due to it's sparseness (likely caused by the relatively low resolution of the kinect compared to the camera used for the fountain dataset). However, looking at the pointcloud from the top-down view (pictured on the right), the distinct roundness of the globe can be seen.

We also tested our implementation on other views and found that the quality of the results significantly drops if it can't find good keypoint matches. In particular, our implementation is particularly sensitive to:

+ low or inconsistent lighting
+ repetitive patterns
+ views that are too different or are too similar to each other

## Project Documentation
For more information and to see our detailed write-up, check out our project repo!

<center>
  <a href="https://github.com/AmyPhung/computer_vision" class="button buttonblack" style="text-decoration: none" target="_blank" rel="noopener noreferrer">
      Check out our Project Repository & Writeup!
  </a>
</center>
