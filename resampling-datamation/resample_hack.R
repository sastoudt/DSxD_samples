setwd("~/SmithTeaching/220_S21/datamations_explore")
library(datamation)
library(animation)
library(tidyverse)
library(infer)

## maybe makes more sense as table instead of plot?

#### original data ####

## sample code
pipeline <- "small_salary_data %>% group_by(Degree)"
datamation_tibble(pipeline, output = "salary_group_degree.gif")

## do the resampling myself, feed in necessary information
test <- as_tibble(small_salary$ID)
chosen <- test %>% rep_sample_n(size = nrow(small_salary), reps = 1, replace = T)

chosenN <- chosen %>%
  group_by(value) %>%
  summarise(count = n())

test2 <- merge(small_salary, chosenN, by.x = "ID", by.y = "value", all.x = T)

test2$count[is.na(test2$count)] <- 0
test2$isIn <- ifelse(test2$count > 0, 1, 0)

## color by is in resample or not, reorder based on that
pipeline <- "test2 %>% group_by(isIn)"
datamation_tibble(pipeline, output = "salary_group_degree_isIn.gif")

## will want ID and how many times in resample moving forward
## also colors these columns which is overkill and a bit distracting
pipeline <- "test2 %>% group_by(isIn,ID, count)"
datamation_tibble(pipeline, output = "salary_group_degree_isInIDCount.gif")

## ultimately want this kind of workflow
test2 %>%
  group_by(isIn, ID, count) %>%
  filter(isIn > 0) %>% ## not implemented yet in datamation
  ungroup() %>%
  dim()

## but now need duplicate rows based on counts so we can visualize them



#### calculate average ####

## summarise is implemented

#### resample with replacement ####

## new input, maybe could paste multiple gifs together?

#### calculate average ####


#### repeat ####


#### go into estimated sampling distribution ####

## completely new territory for the datamation framework