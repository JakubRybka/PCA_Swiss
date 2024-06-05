# PCA_Swiss
Principal Component Analysis (PCA) is a statistical technique used for dimensionality reduction, data compression, and feature extraction. It transforms a dataset into a set of linearly uncorrelated variables called principal components, ordered by the amount of variance they capture from the data. It is especially usefull in finding correlations in multi-variable datasets.

I have performed exemplary PCA on built in dataset from R called "swiss". The dataset represents socio-economic indicators from Switzerland from 47 french-speaking provinces. It depictures faith, fertility, population agriculture occupation, percentage of best marks of draftees marks in military and population with over primary school education.
## Conclusions
This analysis can be used in politics in predicting which population will thrive in future and where to concetrate. Also what to do when focusing on different targets, e.g.: potentially agral focused campaign may bring a success, because it may focus different faith people around you. However potentially when it comes to army it is statistically more probable that protestant people may become handy.

![Swiss_PCA](https://github.com/JakubRybka/PCA_Swiss/assets/169434289/34a08925-c7fe-4adf-b17d-17faf285d262)

## Usage
To run this you need some R environment such as RStudio, and installed packages ggbiplot and devtools. To install those you simply need to type those commands in environment terminal.
``` install.packages('ggbiplot') ```
``` install.packages('devtools') ```
