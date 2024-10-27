---
layout: post
title: Boat Design
subtitle: Applying multi-variable calculus to boat design
image: /img/projects/qea/boats-square.jpg
share-img: /img/projects/qea/boats-square.jpg
tags: [Quantitative-Engineering-Analysis]
---

In this project, we applied concepts from multivariable calculus and physics to create a mathematical model of our boat. The objective was to create a boat that had an [angle of vanishing stability (AVS)](http://sailskills.co.uk/Stability/sailskills_stability_stability_explained_AVS.html) at 130 degrees and optimize the hull shape for speed.

<center>
  {% include overlay.html
    file="/img/projects/qea/FinishedBoat.jpg"
    padding-top="5px"
    width="40%"
    id="finished-boat"%}
</center>

Project partner: Kawin Nikomborirak

Kawin and I chose to optimize the hull shape first, then position ballast inside the boat as needed to have the center of mass that would result in the correct center of mass. Since the boat would be going at relatively low speeds (no hydroplaning), we chose to have our hull shape resemble a row boat. However, as we worked on the project, we realized that making a row boat with an AVS of 130 degrees would require a center of mass right at the bottom of the boat. To make this center of mass possible, we needed to add a keel so that our ballast had somewhere to go.

### Photos from project
CAD model of boat
<center>
  {% include overlay.html
    file="/img/projects/qea/Boat-Uncovered.PNG"
    padding-top="5px"
    width="70%"
    id="boat-uncovered"%}
</center>

Boat model with flow lines from SolidWorks Flow Simulation
<center>
  {% include overlay.html
    file="/img/projects/qea/FlowLines.JPG"
    padding-top="5px"
    width="70%"
    id="flow-lines"%}
</center>

Mathematical model of boat
<center>
  {% include overlay.html
    file="/img/projects/qea/hull-math-model.png"
    padding-top="5px"
    width="50%"
    id="math"%}
</center>

Calculated stability curve
<center>
  {% include overlay.html
    file="/img/projects/qea/stability-curve.png"
    padding-top="5px"
    width="80%"
    id="curve"%}
</center>

Boat assembly
<center>
  {% include overlay.html
    file="/img/projects/qea/boat-frame.jpg"
    padding-top="5px"
    width="70%"
    id="assembly"%}
</center>

Measuring the COM
<center>
  {% include overlay.html
    file="/img/projects/qea/boat-com.jpg"
    padding-top="5px"
    width="50%"
    id="com"%}
</center>

Boats on demo day!
<center>
  {% include overlay.html
    file="/img/projects/qea/allboats.jpg"
    padding-top="5px"
    width="70%"
    id="allboats"%}
</center>

Our boat in a display case!
<center>
  {% include overlay.html
    file="/img/projects/qea/displaycase.jpg"
    padding-top="5px"
    width="70%"
    id="display"%}
</center>

### Final Deliverables
+ [Poster](https://drive.google.com/open?id=1iEd-SI95zQ6L0sc_Lgt8aN6uIrD7Ud8T)
+ [Code](https://github.com/AmyPhung/qea-boat)

### Tools Used
- **MATLAB**
- **SolidWorks**
- **Python**
