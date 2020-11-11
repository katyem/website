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
For the record, I know I suck at programming and the code below resembles a bird's nest.

  ``` r
  ##install.packages('imager')
library('imager')
im_names <- list.files (path = "smaig_pics/"); #folder in your working directory
im_plus_cnt <- cbind(im_names, 0);
im_cnt = 1;

for (imName in im_names) {
  temp <- paste("smaig_pics/", imName, sep='');
  im <- load.image(temp);
  cnt = 0;
  for (x in 1:400) {  # width = 400 pixels
    for (y in 1:400) {  # height = 400 pixels
      if (as.numeric(im[x,y,1,1]) != 0) {
        cnt = cnt+1;
      }
    }
  }  
  
  im_plus_cnt[im_cnt,2] <- cnt;
  im_cnt = im_cnt+1;
}
# How to process/report output?
# percentage of change (JND)? absolute value of amount of change/highest value

print(im_plus_cnt)
# the following assumes the data are in order of paired stacks.
im_cnt = 1;
loop_cnt = nrow(im_plus_cnt)/2;

for(i in 1:loop_cnt) {
  temp = as.numeric(im_plus_cnt[im_cnt,2])-as.numeric(im_plus_cnt[im_cnt+1,2]);  #count of first stack minus count of second stack
  if (temp < 0) { # determine largest
    diff = as.numeric(im_plus_cnt[im_cnt,2]);
  } else {
    diff = as.numeric(im_plus_cnt[im_cnt+1,2]);  
  }
    diff = round(abs(temp)/diff, 3); 

  print(paste(im_plus_cnt[im_cnt,1], im_plus_cnt[im_cnt,2], im_plus_cnt[im_cnt+1,1], im_plus_cnt[im_cnt+1,2],diff, sep=' : '));
  im_cnt = im_cnt+2;
  }
  
  ```

### Did you find this page helpful? Consider sharing it 🙌
