---
date: '2021-03-16'
diagram: true
title: Rainbow stacks

image:
  caption: 'Rainbow Stack'
  placement: 3
math: true
slug: rainbow-stack
author: Tilman

---     

![Building a Rainbow Stack](/post/rainbow_rotation.gif) 
Worked on a color version of the smaig stacks in order to test using them in calculating occlusion on a cube-by-cube basis. This required eliminating the 3D effect on the surface in order to only count 1 color per cube. 
To that end, I've added several new functions to the smaig_v2 function library in order to accomplish what was needed in Imager. The animation was made in R to demonstrate how the stacks are put together using cubes and then rotated on each axis. I had to zoom in at the end due to using the axes in the image - rgl automatically zooms out to accommodate whatever is in the image.

Adding the axes via [the function at this link](http://www.sthda.com/english/wiki/a-complete-guide-to-3d-visualization-device-system-in-r-r-software-and-data-visualization#rgl_add_axes-a-custom-function-to-add-x-y-and-z-axes) was a big help in allowing me to see where each stack is located in 3d space. Using the axes as a guide, I centered the stacks in the buildStack function using the info from each stack's build data. Currently, most of what I did is captured in the SMAIG.sandbox.R file. Hopefully, I'll make updates and wrap all of it into the general buildStack function and use arguments to control everything. Right now, there's just too much duct tape holding everything together.



```python
  # Fix the centering problem; 
  # 1) Find the largest coordinate value of each axes in the cubeCoord matrix
  lgVal = c(0,0,0)
  for (i in 1:stackSize) {
    # move down each axis to find largest absolute value (most often last value, but not always)
    for (j in 1:3) {
      if (abs(cubeCoord[i,j]) > lgVal[j]) {
        lgVal[j] <- cubeCoord[i,j]
      }
    }
  }
  #########cubeCoord = temp
  # 2) calculate the center and replace all cubeCoord values
  is.even <- function(x) x %% 2 == 0
  for (i in 1:stackSize) {
    for (j in 1:3) {
      if (is.even(lgVal[j])) { 
        cubeCoord[i,j] <- (cubeCoord[i,j]-ceiling(lgVal[j]/2))+.5
      } else {
        cubeCoord[i,j] <- (cubeCoord[i,j]-floor(lgVal[j]/2))-.5
      }
    }
  }
```
![Rotating Flat Rainbow Stack](/post/SM_3d_FlatSpin.gif)

___

### Did you find this page helpful? Consider sharing it 🙌
