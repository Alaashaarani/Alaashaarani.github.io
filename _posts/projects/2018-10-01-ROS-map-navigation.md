---
layout: post
title: ROS Map Navigation
subtitle: A simple ROS package to navigate a robot through a map
image: /img/projects/softdes/mapnav-square.jpg
share-img: /img/projects/softdes/mapnav-square.jpg
tags: [Software-Design]
---

My friends and I wanted to learn more about [SLAM](https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping), so we thought it'd be a good idea to use the final project in our Software Design class to get a headstart in learning about what goes into this complex problem. We first used the ROS package [hector_slam](http://wiki.ros.org/hector_slam) to get an idea of what a complete implementation would look like. After getting this up and running on the [TurtleBot](https://www.turtlebot.com/), we decided to focus on the map navigation component of SLAM since that fit within the scope of this class.

We first used the ROS package [gmapping](http://wiki.ros.org/gmapping) to generate a map, then we used our ROS package based on [nav2D](http://wiki.ros.org/nav2d) to find a path from the specified starting position to end goal on the map.

For more information, I'd recommend checking out our [project website](/SLAM-SoftDes-Final-Project)!

<center>
   <a href="https://amyphung.github.io/SLAM-SoftDes-Final-Project/">
     <img src="/img/projects/softdes/website.jpg" style="width:90%">
   </a>
</center>
<p/>

### Project Poster
<center>
  {% include overlay.html
    file="/img/projects/softdes/mapnav-poster.jpg"
    padding-top="5px"
    width="95%"
    id="poster"%}
</center>
<p/>

### Project Video
<style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://www.youtube.com/embed/Fnh2aS3DxgY' frameborder='0' allowfullscreen></iframe></div>
<p/>

### Relevant Links
<center>
  <button onclick="location.href='https://amyphung.github.io/SLAM-SoftDes-Final-Project/'" type="button" class="button buttonblack">
         Project Website</button>
  <button onclick="location.href='https://github.com/AmyPhung/SLAM-SoftDes-Final-Project'" type="button" class="button buttonblack">
         Source Code</button>
  <button onclick="location.href='https://github.com/AmyPhung/SLAM-SoftDes-Final-Project/wiki'" type="button" class="button buttonblack">
         Code Documentation</button>
</center>
