---
layout: post
title: Robot Tugboat
subtitle: An autonomous mini-tugboat
image: /img/projects/tugboat/square.jpg
share-img: /img/projects/tugboat/square.jpg
tags: [Fundamentals-Of-Robotics]
---

This project involved modifying a prebuilt tugboat and adding sensors, sensor mounts, Arduinos, and other hardware to upgrade the platform from being remote-controlled to a fully autonomous tugboat with radio communications to an off-board computer. To prove sufficient autonomous behavior, we programmed our boat to be able to do several low-level behaviors:
+ wall following
+ obstacle circumnavigation
+ autonomous docking and undocking.
To further showcase the boat’s autonomous capabilities, we also programmed the boat to accomplish ”missions”. These included completing figure 8s around two obstacles and following a specified target capture, which incorporated the boat’s programmed low-level behaviors.

For more technical details, check out the report at the bottom of this page!

This project was created along with my classmates Jordan Leadley, Everardo Gonzalez, and Robert Wechsler.

## Videos

#### Undocking & circumnavigation test
Measures distance from the wall with IR sensors and heading with an IMU to successfully undock, then make a lap around the test pool
  <style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://www.youtube.com/embed/ErhXkYFsTJ4' frameborder='0' allowfullscreen></iframe></div>

#### Undocking & 3 figure-8s test
Measures distance from the wall with IR sensors and heading with an IMU to sucessfully undock, then make 3 figure-8s around obstacles in the test pool to test robustness
  <style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://www.youtube.com/embed/WIVv6e_m0Sk' frameborder='0' allowfullscreen></iframe></div>

#### Undocking, 1 figure-8, then re-docking test
Measures distance from the wall with IR sensors and heading with an IMU to sucessfully undock, then make a single figure-8s around obstacles in the test pool. Uses a Pixycam to successfully redock the boat.
  <style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://www.youtube.com/embed/jrWSk9W6jTE' frameborder='0' allowfullscreen></iframe></div>

## Photos
<center>
  {% include overlay.html
    file="/img/projects/tugboat/front.jpg"
    padding-top="5px"
    width="57%"
    id="front"%}
  {% include overlay.html
    file="/img/projects/tugboat/front2.jpg"
    padding-top="5px"
    width="42%"
    id="front2"%}
  {% include overlay.html
    file="/img/projects/tugboat/back.jpg"
    padding-top="5px"
    width="69.5%"
    id="back"%}
  {% include overlay.html
    file="/img/projects/tugboat/top.jpg"
    padding-top="5px"
    width="29.2%"
    id="top"%}
  {% include overlay.html
    file="/img/projects/tugboat/team.jpg"
    padding-top="5px"
    width="100%"
    id="team"%}
</center>

## Documentation
+ [View Source Code on GitHub](https://github.com/AmyPhung/FunRoboTugboat)
+ Report:
<center>
  <embed src= "/files/fun-robo/FunRobo_Final_Report_.pdf" width= "100%" height= "1000">
</center>
