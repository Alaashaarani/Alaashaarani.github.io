---
layout: post
title: Chlorophyll-a Comparison
subtitle: Comparing chl-a measurements from satellites, robotic floats, and shipborne fluorometers in New Zealand
image: /img/projects/chl-a/display-img.png
share-img: /img/projects/chl-a/display-img.png
tags: [SEA-Research]
---

During my semester abroad with [SEA](/sea), taking the class "Directed Oceanographic Research" gave me the opportunity to complete a research project and communicate my results in a technical write-up. One of my primary motivations when studying with SEA was to learn more about the role robots played in the ocean sciences since I wanted to find a way to apply what I'd learned from Olin to make an impact. My professor for this class suggested looking into the robotic Argo floats as a potential research topic, which eventually led to this chlorophyll-a comparison project.

Through my other classes with SEA, I learned that chlorophyll-a data was widely used among the oceanographic research community, and that each method of collecting this data came with its set of pros and cons, which can be summarized as follows:

<center>
  <figure>
    {% include overlay.html
      file="/img/projects/chl-a/pros-cons.png"
      padding-top="5px"
      width="100%"
      id="pro-con"%}
    <figcaption style="padding-top:5px;width:70%">Summary of pros and cons for each sensor</figcaption>
  </figure>
</center>

I wanted to compare the measurements between the robotic Argo floats and the flow-through fluorometer we had on board our ship, but these two pieces of data couldn't be directly compared with each other for a couple of reasons:
1. The Argo floats take profiles at depth while our fluorometer only took surface measurements
2. Our cruise track and the Argo float path didn't quite line up exactly.
3. The Argo floats that traveled near New Zealand have been taking samples since 2017, but the samples collected during our cruise would only span a 1-month period in 2020.

In order for my comparisons to make some sense, I compared each of these sensors to data collected by satellites, which ultimately allowed me to make indirect comparisons between the Argo and shipborne fluorometer data. Overall, my results showed that at lower concentrations, all three sensors were in fairly good agreement, but in areas with higher concentrations the data deviated. In high concentration areas, the robotic Argo floats tended to record higher than the satellite data, and the fluorometer tended to record lower concentrations than the satellite did.



### Conference Submission
After departing from New Zealand, I had originally planned to travel for the next month around New Zealand, Australia, and Hawaii before returning home. Unfortunately, due to the pandemic, these plans got canceled, but a silver lining that came out of the situation was that it provided me plenty of time at home to put together a submission for the OCEANS 2020 Student Poster Competition. I submitted my results in a 2-page extended abstract back in April, hopeful that the pandemic would be over by the conference date in October. The conference ended up being held virtually - for more info about the conference, visit the [OCEANS 2020 website](https://global20.oceansconference.org/).

After my extended abstract was accepted, I submitted a paper, poster, and video to the competition. I was a bit bummed that my first conference experience was remote, but am excited for more opportunities to present at conferences in the near future once I'm in grad school.

#### Conference Paper Abstract
<font size="2.5">
<p style="margin-left:5%;margin-right:5%;">
Accurately measuring chlorophyll-a concentrations within the world’s oceans is an important part of building our understanding of its underlying processes and the human impact on it, and developing tools to do this is an area of active study. Some methods used today to collect this data include in-situ fluorometers on board automated Biogeochemical Argo floats, flow-through fluorometers on board oceangoing vessels, and ocean color algorithms applied to remote sensing data. While shipborne field fluorometers are the most accurate of the three since they can be recalibrated before and after each expedition, they are limited in spatial and temporal coverage due to their dependence on expensive oceanographic research cruises. The Biogeochemical floats help to increase the coverage of fluorometer data by automating the data collection, but are known to suffer from sensor drift over time since their fluorometers cannot be serviced and calibrated regularly. Remote sensing data has by far the greatest spatial and temporal coverage of the three methods, but is known to be significantly less accurate in certain regions and is limited to surface measurements. This study compares these three measurement methods by analyzing data collected by a 10AU Field and Laboratory Fluorometer connected to a flow-through system, data from a Biogeochemical Argo float, and satellite data from the VIIRS-SNPP dataset in the same region. The results of comparisons between each of these collection methods are presented.
</p>
</font>

#### Full Conference Paper
<center>
  <embed src= "/files/chl-a/Chl_A_Comparison_Formatted.pdf" width= "100%" height= "1000">
</center>

#### Conference Poster
<center>
  <figure>
    {% include overlay.html
      file="/img/projects/chl-a/chl-a-poster.jpg"
      padding-top="5px"
      width="100%"
      id="poster"%}
    <figcaption style="padding-top:5px;width:70%"></figcaption>
  </figure>
</center>

<center>
  <a href="/files/chl-a/PosterPDF_Phung.pdf" class="button buttonblack" style="text-decoration: none">
      High-Resolution PDF Version
  </a>
</center>

#### Pre-recorded Presentation Video
<style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://www.youtube.com/embed/zJIH4F3Ajn0' frameborder='0' allowfullscreen></iframe></div>

### Other Links
+ [Global OCEANS 2020 Student Poster Competition Article](https://ieeeoes.org/oes-beacon/december-2020-oes-beacon/the-student-poster-competition-at-global-oceans-2020/)
+ [Global OCEANS 2020 Conference Website](https://global20.oceansconference.org/)
+ [Project Code & Data Info](https://github.com/AmyPhung/chl-a-comparison/)
+ [View on IEEE Xplore](https://ieeexplore.ieee.org/document/9389221)
