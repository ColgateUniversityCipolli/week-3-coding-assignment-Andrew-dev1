# create the vectors of original numbers and prime numbers
# the plan is to find a prime number that divides each original number
# and check if its quotient is another prime number 

original.numbers <- c(6,10,14,15,21,22,26,33,34,35,
                  38,39,46,51,55,57,58,62,65,69,
                  75,77,82,85,86,87,91,93,94,95)

prime.numbers <- c(2,3,5,7,11,13,17,19,23,29,31,
                   37,41,43,47,53,59,61)
x  <- 1:10
quotients <- data.frame(og = integer(), diff = integer())
for(i in original.numbers){
  for(prime in prime.numbers){
    temp <- i/prime
    if((i%%prime) == 0 & temp != i){
      
      break
    }
  }
}
for(i in original.numbers){
  print(i)
}

