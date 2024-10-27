---
layout: post
title: Engine Data Graphing GUI
subtitle: GUI for plotting data from helicopter engine Health and Usage Monitoring System
image: /img/projects/GE/CT7_T700.jpg
share-img: /img/projects/GE/CT7_T700.jpg
tags: [GE-Aviation]
---

One of the primary functions of the product support team is to look at helicopter engine data from events when something doesn’t go as expected and be able to understand what happened, what the cause of the event was, and what corrective action they should recommend to the customers to fix and prevent similar events from happening again. Since this data often involves military engines, the tool used to graph these datasets was limited to non-web-based tools, so they used Excel. Unfortunately, Excel was unable to efficiently work with these large datasets, which oftentimes resulted in bugs, glitches, crashes, and data loss.
To help remedy this, I created a python-based desktop graphing tool to handle these datasets and be a significant improvement over Excel for their particular usage. By working closely with the members of my team who would be the primary users of my GUI, I designed and implemented custom features that Excel did not have.

Tools used:
-	Python Tkinter library – for GUI
-	Python matplotlib library – to generate graphs with interactive functionality

**Since GE employees are required to sign the EIPIA, actual images and source code couldn't be included on this page**
