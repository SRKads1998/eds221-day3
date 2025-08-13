# Basic if statementante

burrito <- 1.99 # assiginign an object value

# write a short if statement

if(burrito > 2) {
  print("I love Burritos!")
} else
  print("I hate burritos")

# an example w/ strings

my_ships <- c("millenium falcon", "X-wing", "Thai-Fighter", "deaf star")
stringr::str_detect(my_ships, pattern = "r")

phrase <- "I love burritos!"
if (stringr:: str_detect(phrase, "love"))
  print("Big burrito fan")



# basic if-else statement

pika <- 89.1
if (pika > 60) {
 print("Big Boy") }
else 
  print("smol")

# another example 
food <- "I love tacos!"

if (stringr::str_detect(food, pattern = "burritos")) { print("heck yeah")
}else {
  print("oh no")
}

# More options with if-else if-else statements

marmot <- 6.8
if (marmot < .5) {
  print ("teeny tiny")
} else if (marmot >= .5 & marmot < 3) {
  print ("mid guy")
} else print("big dog in the dirt")

# Use switch function to write comp statements

species <- "mouse"


switch (species,
        "cat" = print("meow meow"),
        "dog" = print("woof-bark"),
        "mouse" = print("squeak")
)

# see next week dplyr:: case_when!

# writing for loops

dog_names <- c("Teddy", "Khora", "Banjo","Waffle")
# basic version below
print(paste("My pup's name shall be", dog_names[1]))

pupster <- dog_names[1]
print(paste("My pup's name shall be", dog_names[pupster]))

for (pupster in dog_names)  {
  print(paste("My dog's name is", pupster))

}

# another one

mass <- seq(from = 0, to = 3, by = 0.5)

i <- mass[1]
i
new_val <- i + 2 #adding 2 to each value
print(new_val) #printing the new value

# write into a for loop
for (i in mass) {
  new_val <- i + 2
  print(new_val)
  
}

# practicing indexing

new_val <- mass[i] + 2
print(new_val)

# write into a for loop

for (i in 1:length(mass)) {
  new_val <- mass[i] + 2
  print(new_val)
}

seq(new_val)
seq_along(mass)
length(mass)

# anotehr example with  iterating by position (indexing)
tree_height <- c(1, 2, 6, 10)

# exxample for the frist case
i <- 1


# convert into a generalizable expression
tree_height [i] + tree_height[i + 1]

# conver into a for loop and test out making a sequence
seq_along(tree_height)

for (i in seq_along(tree_height)) {
  val <- tree_height [i] + tree_height [i +1]
  print(val)
}

# create a vector of animals
animal <- c("cat", "dog", "zebra", "dog")


for (i in seq_along(animal)) {
  if (animal[i] == "dog"){
    print ("I love dogs!")
  } else {
    print ("These are not dogs")
  }
}

# another for loop example w/ conditionals

#animal species
species <- c("dog", "elephant", "goat", "dog", "elephant")

age_human <- c(3, 8, 4, 6, 12, 18)
# 1 hm_yr = 7 dog, .88 elephant, 4.7 goat

# allocate space for our output
animal_ages <- vector(mode = "numeric", length = length(species))
for(i in seq_along(species)) {
  if(species[i] == "dog") {
    animal_age <- age_human[i] * 7
  } else if (species[i] == "elephant") {
    animal_age <- age_human[i] * .88
  } else if (species[i] == "goat") {
    animal_age <- age_human[i] * 4.7
  }  
  animal_ages [i] <- animal_age
} 

# another example of storing an output
big_cats <- vector (mode = "numeric", length = length(tigers))

for(i in seq_along(tigers)){
  total_cats[i] <- tigers[i] + lions[i]
}

mtcars

# for loops to iterate across columns of data frame
mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))
for (i in 1:ncol(mtcars)) {
mean_val <- mean(mtcars[[1]], na.rm = TRUE)
mean_mtcars[i] <- mean_val
}
# A for loop over columns w/ a condition

library(palmerpenguins)
library(palmerpenguins)

for(i in 1:ncol(penguins)) {
  if (is.numeric(penguins[[i]])) {
  penguin_median <- median(penguins[[3]], na.rm = TRUE)
  print(penguin_median)
} else {
  print("data not numeric")
}
}
# Functional programming

# apply() function iterates over cols/rws
# rewrite our for loop for finding mean
apply(X = mtcars, MARGIN = 2, FUN = mean)
# same as sayin apply the function across teh columns in mtcars

library(tidyverse)

penguins %>% 
  group_by(species) %>% 
  summarise(across(where(is.numeric), mean, na.rm = TRUE))
