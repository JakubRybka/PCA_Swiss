# Load necessary libraries
library(ggbiplot)
library(devtools)
# Load the dataset
dat = swiss
# Standardize the data
#usarrests_scaled <- scale(USArrests)
dat$Catholitism <- c(rep("Protestant",nrow(swiss)))
for (i in 1:nrow(swiss))
{
  if (swiss$Catholic[i] > 70) {
    dat$Catholitism[i] = "Catholic"
  }
  else if (swiss$Catholic[i] > 30)
  {
    dat$Catholitism[i] = "Mixed"
  }
}
# Perform PCA
pca <- prcomp(dat[,1:5], center = TRUE, scale. = TRUE)

# Summary of PCA
summary(pca)

# Visualize PCA results
p <- ggbiplot(pca, ellipse = TRUE,choices=c(1,2) ,circle = FALSE, obs.scale = 1, var.scale = 1, groups = dat$Catholitism)+
  scale_colour_manual(name="Faith", values= c("yellow4", "green3", "darkblue"))+
  ggtitle("PCA of swiss dataset")+
  theme_minimal()+
  theme(legend.position = "bottom")
print(p)


# Swiss dataset: Standardized fertility measure and socioeconomic indicators for each of 47 French-speaking 
# provinces of Switzerland at about 1888. 
# Parameters shown in dataset are:
# Fertility - common standardized fertility measure
# Agriculture - population of males involved in agriculture as occupation
# Examination - population of draftees receiving highest mark on army examination
# Education - education beyond primary school for draftees.
# Catholic - ‘catholic’ (as opposed to ‘protestant’).
# Infant mortality - live births who live less than 1 year.( not analyzed, similar values for all elements)


# Analysis of graph.
# Clusters depending on faith. Agriculture and Fertility strongly correlated.
# Catholic people not very educated, tend to occupy agriculture fertile people, bad marks at military examination.
# Mixed society varies as can be very educated and infertile and the other way around, the widest and poorly exposed society.
# Protestant people tend to be good militarily averaged educated and rather less fertile than catholics.

# Conclusions:
# This analysis can be used in politics in predicting which population will thrive in future and where to concetrate.
# Also what to do when concentrating on different targets, e.g.: potentially agral focused campaign may bring a success,
# because it may focus different faith people around you. However potentially when it comes to army it is statistically
# more probable that protestant people may become handy.