---
date: '2020-11-13'
diagram: true
title: Imager Update

image:
  caption: 'Occlusion Table'
  placement: 3
math: true
slug: imager-update
author: Tilman

---     
    
I continued to tweak the code (and actually got it to work properly). After a brief break from the project, I realized how difficult it was to follow the code without extensive commenting... so, the updated code is extensively commented - at least from my perspective. I also moved the project folder to the [SMAIG project](/project/smaig/) and it now resides on [GitHub](https://github.com/katyem/smaig). 

Occlusion scores were derived by counting the number of pixels with a color code greater than .5 (0 = black and 1 = white in a gray-scale palette) - lower scores = greater occlusion. The images can all be regenerated using the SMAIG code and the spreadsheet in the folder.

___

### Did you find this page helpful? Consider sharing it 🙌
