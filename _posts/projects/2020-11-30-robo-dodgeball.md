---
layout: post
title: Robo Dodgeball
subtitle: Using machine learning to train a robot to play dodgeball
image: /img/projects/comprobo/dodgeball-cover-img.png
share-img: /img/projects/comprobo/dodgeball-cover-img.png
tags: [Computational-Robotics]
---

This project was created as part of the [open-ended final project](https://comprobo20.github.io/assignments/final_project) in my [Computational Robotics course](https://comprobo20.github.io/) - we were provided with a [gazebo simulator](https://github.com/comprobo20/comprobo20/tree/master/neato_gazebo) that provided the low-level controls for a Neato robotic vacuum, and it was up to us to decide what to do with it. For this project, my group wanted to focus on robotics applications of machine learning. Previously, our collective experiences had centered primarily on using machine learning as a means for classification, but we were interested in learning about its uses for developing a control policy. We decided to work on dodgeball since it was a flexible project where we could start with a simple 1-dimensional case in order to maximize our understanding along the way, and it would be intuitive enough to understand whether or not our model was accomplishing what we hoped it would.

Project Partners: Everardo Gonzalez, Nathan Faber

### Project Results
Ultimately, we were able to train two different types of models using imitation learning, where we recorded a dataset of us playing dodgeball then trained the model to imitate what we did. Over the course of this project, we looked into Long-Short Term Memory models (LSTM) and standard neural networks. Using these models, we were able to train a differential drive robot to dodge balls with some degree of success.

#### LSTM:
<img src="https://github.com/EverardoG/ml_comprobofinal/blob/gh-pages/img/LSTM_08_10_NICE.gif?raw=true" width="1500"/>

#### Standard:
<img src="https://github.com/EverardoG/ml_comprobofinal/blob/gh-pages/img/standard_987_good.gif?raw=true" width="1500"/>

### Project Documentation

<center>
  <a href="https://github.com/EverardoG/ml_comprobofinal" class="button buttonblack" style="text-decoration: none" target="_blank" rel="noopener noreferrer">
      Project Repository
  </a>
</center>

<center>
  <a href="https://everardog.github.io/ml_comprobofinal/" class="button buttonblack" style="text-decoration: none" target="_blank" rel="noopener noreferrer">
      Project Website
  </a>
  <iframe src="https://everardog.github.io/ml_comprobofinal/" style="width:100%;height:700px;">
  </iframe>
  <!-- <a href="https://everardog.github.io/ml_comprobofinal/" target="_blank" rel="noopener noreferrer">
      <img src="/img/projects/comprobo/dodgeball-website-preview.png">
  </a> -->
</center>
