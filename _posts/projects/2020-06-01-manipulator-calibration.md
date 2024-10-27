---
layout: post
title: Manipulator Calibration
subtitle: Developing a calibration method extensible to deep-sea manipulators
image: /img/projects/whoi/manipulator-cover-img.png
share-img: /img/projects/whoi/manipulator-cover-img.png
tags: [WHOI-SSF]
---

During my [Summer Student Fellowship with WHOI](https://www.whoi.edu/what-we-do/educate/undergraduate-programs/summer-student-fellowship/), I researched computer vision-based calibration methods that would be extensible to deep-sea manipulators. Hydraulic manipulator arms are commonly used for a variety of underwater tasks requiring a high degree of both strength and dexterity, ranging from scientific tasks such as capturing delicate live organisms or sampling hydrothermal vent fluids to maintenance tasks including pipeline and dam inspection. Accurately knowing the position and orientation of a manipulator’s end effector with respect to objects in its environment is essential for automating manipulation, which is key for increasing both the range and complexity of sampling or maintenance tasks.

While a lot of prior work has been completed in this space, the need remains for a calibration process to characterize the relationship between raw feedback from joint angle sensors and actual manipulator joint angles - particularly in situations where this relationship is dynamic and needs to be calibrated in remote environments. My project attempts to address this challenge by proposing two different calibration methods that achieve this, and quantify the accuracy and robustness of these methods to different levels of measurement uncertainty. (Note that this project was completed remotely due to the COVID-19 pandemic)

<center>
  {% include overlay.html
    file="/img/projects/whoi/manipulator-cover-img2.png"
    padding-top="5px"
    width="80%"
    id="manipulator-cover-img2"%}
  <br/>
  Hardware used for testing calibration methods
</center>

### Project Poster
<center>
  <a href="/files/whoi/manipulator-calibration-poster.pdf" target="_blank">
    <img src="/img/projects/whoi/poster-preview.jpg" style="width:95%;" >
  </a>
  <br/>
  (Click for full-resolution PDF)
</center>
<br/>

### Project Presentation Recording
<style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://www.youtube.com/embed/C3i7b1ThmnM' frameborder='0' allowfullscreen></iframe></div>
<br/>

### Project Written Report
<center>
  <embed src= "/files/whoi/Phung-End-of-Summer-Report.pdf" width= "100%" height= "1000">
</center>
