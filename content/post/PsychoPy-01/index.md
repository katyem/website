---
date: '2023-01-03'
title: Moving Katyem to Python via PsychoPy

image:
  caption: 'PsychoPy'
  placement: 3
slug: PsychoPy Assessment
author: Tilman

---

I started poking around and looking for alternative packages that I could use to accomplish my goals with Katyem and ran across the PsychoPy project at [Pavlovia.org](https://psychopy.org/index.html).  It appears to be an open-source version of SuperLab, E-prime, or MatLab research software for creating and running psychological computer experiments. PsychoPy allows you to use a graphic user interface to build your experiment and then creates the python code to run it. It is  highly extensible primarily via user contributions (python code). The other good news is that it's been around quite a while (the project started in 2002) and has matured. It also seems to be increasing in popularity (their website reports almost 40k users per month*). Looking at the experiments running on their site, many of the users are students in research classes.

I've played with it a bit and it appears to offer what I'm looking for in a platform. So far, I have a mental rotation task up and running. My plan is to port this to my website - wish me luck!

* You can see a graph of the number unique users per month since 2010 [here]()

Reference:
[Peirce, J., Gray, J.R., Simpson, S. et al. PsychoPy2: Experiments in behavior made easy. Behav Res 51, 195-203 (2019).](https://doi.org/10.3758/s13428-018-01193-y)
