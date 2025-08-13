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