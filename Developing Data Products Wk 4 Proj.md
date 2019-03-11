Developing Data Products Wk 4 Proj
========================================================
author: Sng Jun Qiang
date: 11 March 2019
autosize: true

Overview
========================================================

As part of the Developing Data Products Course in Coursera Data Science Specialization track, an RStudio shiny application is developed.

The application provides users with exploration view of the mtcars dataset. It allows comparison between the label variable mpg and the various predictive variables. Regression models are developed for each of the variables against mpg.

The Application
========================================================

The application included:

1. Variables for Selection to compare with mpg.
2. Tab to select to view reactive output display of the plot or the regression model.
3. The server.R and ui.R codes are posted in github at: https://github.com/JQDATASCIENCE/Developing-Data-Products-Wk-4-Proj
4. The App can be found at: https://jqdatascience.shinyapps.io/mtcars/

The Data
========================================================

The data mtcars has 32 observations and 11 numberic variables.


```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

Summary
========================================================

The exploration shows that the majority of the variables form negative regression with mpg except for the following variables which forms negative regression with mpg:

1. Rear Axle Ration
2. 1/4 Mile Time
3. Engine
4. Transmission
5. Num. of Forward Gears

Hence, these information provided us with a initial fuel efficiency overview of the relationships between mpg and the other variables. Further models such as mutlivariable regression can be explored to understand the various variables importance level on mpg so to provide a more concrete analysis.
