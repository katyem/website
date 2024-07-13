---
title: "the KOTA"
subtitle: ""
summary: "Katyem Object Tracking Assessment: an AIG assessment of cognitive ability"
authors: [Tilman Sheets]
tags: [AIG]
categories: [AIG]
date: 2020-08-19T20:27:21-05:00
lastmod: 2020-08-19T20:27:21-05:00
featured: true
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: "the KOTA"
  focal_point: "Smart"
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---
# The KOTA: Katyem Object Tracking Assessment
The KOTA represents my second attempt at Automated Item Generation. My first experience with it was working with [Dr. Scotty Hines](https://twitter.com/scottyhines) on a very interesting number analogy test. This time around I wanted to use graphic images. I was greatly influenced by the [iCar project](https://icar-project.com/) which seemed to be mostly dormant by the time I stumbled upon it. The plan is to rewrite the code that builds the item images in r for use in our rAIG project's open assessment system. 

The website is written using a strange combination of PHP and JavaScript. I licensed [Advanced Security - PHP Register/Login System](https://codecanyon.net/item/advanced-security-php-registerlogin-system/5282621) for the login (best $16 I've ever spent). The rest was hacked and spliced together into a heap of code that would make even the most unexperienced programmer cringe. 


The parameters for the images can come from an SQL call ([MySQL](https://www.mysql.com/)) or they can be randomly generated with PHP script (with the idea of later providing limits based on the performance of item radicals - an AIG term for item characteristics related to difficulty).

At this point, the images are drawn using Canvas (HTML5's answer to Adobe Flash). This means tons of JavaScript!!  Yet another plan is to port this (the drawing onto Canvas) over to R (I know, WHY?  Well, I think researchers will get more interested if they can jump in using a language with which they are already familiar). The R code will create sets of images and JavaScript will "place"" them in the Canvas elements.

I'm still working the bugs out of the administration dashboard but the gist of it is that Admins can collect data across different studies - each with its own KOTA code.
{{< spoiler text="Click to see the dashboard" >}}
![](KatyemDashboard.PNG)
{{< /spoiler >}}

Feel free to take it for a spin: [the KOTA at Katyem.net](https://katyem.net)

{{% alert note %}}
If you're a researcher interested in using the KOTA, email me with a request to setup an admin account.
{{% /alert %}}

