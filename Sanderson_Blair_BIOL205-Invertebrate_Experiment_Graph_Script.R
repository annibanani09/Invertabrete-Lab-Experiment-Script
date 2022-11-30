
library(tidyverse)

#import csv
copepod_data <- read_csv("Blair_Sanderson_BIOL205-Invertebrate_Experiment_lab_data.csv")

#filter the data to make first object
library(dplyr)


print(Copepods)

#make the plot

m <- ggplot(data = copepod_data, aes(x = Treatment, y = Survivor, fill = Week)) + 
  geom_bar(stat = "identity", position = position_dodge())+
  scale_fill_grey() 
  m +
  ylab("Survivors") +
  xlab("Treatment") +
  theme(text = element_text(size=10),
        axis.text.x = element_text(angle=90, hjust=1))
 
#Null Hypothesis: There is no correlation between the death rate and the diet.
#Alternative Hypothesis: There is correlation between the death rate and the diet.
#Alpha: 0.05
library(tidyverse)
library(skimr)
library(broom)
library(knitr)
library(janitor)
##For Week 1
  
copepod_data_Week1 <- read_csv("Data-Invertebrate- Week 1 - Sheet1.csv")

week1.chisq.results <- copepod_data_Week1 %>%
  tabyl(Treatment, Survivor) %>%
  janitor::chisq.test()
print(week1.chisq.results)
#X-squared: 20, df: 16, p-value: 0.2202
##Week 2

copepod_data_Week2 <- read_csv("Data-Invertebrate- Week 2 - Sheet1.csv")

week2.chisq.results <- copepod_data_Week2 %>%
  tabyl(Treatment, Survivor) %>%
  janitor::chisq.test()

print(week2.chisq.results)

#X-squared: 10, df: 8, p-value = 0.265
##Week 3

copepod_data_Week3 <- read_csv("Data-Invertebrate- Week 3 - Sheet1.csv")

week3.chisq.results <- copepod_data_Week3 %>%
  tabyl(Treatment, Survivor) %>%
  janitor::chisq.test()

print(week3.chisq.results)
#X-squared: 3.0815e-32, df: 1, p-value: 1
#These values do not appear to be correct but dont know if there's a test I can use as the values were so low.

