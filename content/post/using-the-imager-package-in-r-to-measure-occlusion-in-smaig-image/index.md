---
date: '2020-10-17'
diagram: true
title: Using the imager package in R to measure occlusion in SMAIG image

image:
  caption: 'Image credit: [**blogdown**](https://bookdown.org/yihui/blogdown/)'
  placement: 3
math: true
slug: using-the-imager-package-in-r-to-measure-occlusion-in-smaig-image
author: Tilman


---     
    
I've been playing with the imager package in r to count pixels according to color code. Pretty straightforward so far, other than a bit of a learning curve to "understand" the structure of the image files. The images are from our  [SMAIG](/project/smaig/) project and all of the same dimensions, so I didn't bother with size (which means the code will only work with a 400x400 image - sorry, but...). The hope is that this data will help us better understand the role of occlusion in a Shepard-Metzler 3D rotation task. Well, first, we hope the data help us better understand how to best measure the construct - ha! At this point I've only counted the number of non-black/non-zero pixels. The plan is to count individual colors (grayscale) and color ranges to see if we can also determine the optimal amount of specificity needed in the model. Maybe later we'll play around with edge detection, we'll see. The long-term plan is to push this information into an algorithm that can automatically generate a SM rotation task with a targeted level of difficulty (i.e., theta).  


### Did you find this page helpful? Consider sharing it 🙌
