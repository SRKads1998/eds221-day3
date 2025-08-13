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
