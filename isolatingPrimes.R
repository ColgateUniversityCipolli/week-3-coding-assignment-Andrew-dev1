# this code creates a vector all possible products of unique prime numbers under 100 
# and compares it with the original numbers. Then shows the replacement

original.numbers <- c(6,10,14,15,21,22,26,33,34,35,
                  38,39,46,51,55,57,58,62,65,69,
                  75,77,82,85,86,87,91,93,94,95)

prime.numbers <- c(2,3,5,7,11,13,17,19,23,29,31,
                   37,41,43,47,53)

products <- c()
for(i in 1:(length(prime.numbers)-1)){
  curr <- prime.numbers[i]
  for(j in prime.numbers[(i+1):length(prime.numbers)]){
    temp <- j*curr
    if(temp < 100){
      products <- append(products,temp)
    }
    else{
      break
    }
  }
}
wrong.answer <- setdiff(original.numbers,products)
correct.replacement <- setdiff(products,original.numbers)

# create the vectors of original numbers and prime numbers
# the plan is to find a prime number that divides each original number
# and check if its quotient is another prime number 
# fun practice for later uses, don't worry about this part
# x  <- 1:10
# quotients <- data.frame(og = integer(), diff = logical())
# for(i in original.numbers){
#   x <- FALSE
#   for(prime in prime.numbers){
#     temp <- i/prime
#     if((i%%prime) == 0 & temp != i & temp %in% prime.numbers){
#       x <- TRUE
#       break
#     }
#   }
#   new.row <- data.frame(og = i, diff = x)
#   quotients <- rbind(quotients,new.row)
# }
