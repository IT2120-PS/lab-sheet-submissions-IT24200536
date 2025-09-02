setwd("C://Users//user//Desktop//IT24200536")
getwd()


##Question 01
#Part 1
#Binomial Distribution
#Here, random variable X has binomial distribution with n=44 and p=0.92

#Part 2
#It asks to find P(X=40). Following command gives the density.
#In other words, probability of getting an exact value can be calculated using "dbinom" command.
dbinom(40,44,0.92)


#Part 3
#It asks to find P(X <= 35). Following command gives the cumulative
#probability ( <= ), if ""lower.tail" argument equals to "TRUE".
pbinom(35, 44, 0.92,lower.tail = TRUE)


#Part 4
#It asks to find P(X>=38). This can find using "pbinom" command as follows.
#You need to rearrange the probability statement as follows.
#P(X>=38)=1-P(X<38)=1-P(X <= 37)
#Then command will be as follows.
1- pbinom(37, 44, 0.92, lower.tail = TRUE)
#Or else following command can also used by keeping argument "lower.tail" as "FALSE".
#Here, when that argument is "FALSE", it means that P(X>37) which is same as P(X>=38).
pbinom(37, 44, 0.92,lower.tail = FALSE)

#Part 5
#It asks to find P(40 <= X <= 42). This can find using "pbinom" command as follows.
#You need to rearrange the probability statement as follows.
#P(40 <= X <= 42)=P(X <= 42)-P(X <= 39)
#Then command will be as follows.
pbinom(42, 44, 0.92,lower.tail = TRUE)-pbinom(39, 44, 0.92,lower.tail = TRUE)

##Question 02
#Part 1
#Number of babies born in a hospital on a given day

#Part 2
#Poisson distribution
#Here, random variable X has poisson distribution with lambda=5

#Part 3
#It asks to find P(X=6). Following command gives the density.
#In other words, probability of getting an exact value can be calculated using "dpois" command.
dpois(6,5)

#Part 4
#It asks to find P(x>6). This can find using "ppois" command as follows.
#If you keep "lower.tail" argument as "TRUE", that means P(X <= 6).
#Since we need P(X>6), keep the "lower.tail" argument as "FALSE".
ppois(6, 5,lower.tail = FALSE)

##Excersice#2

setwd("C://Users//user//Desktop//IT24200536")
getwd()

# R Script for Statistical Problems
# Registration Number: IT12345678 (replace with your actual registration number)

# Problem 1: Binomial Distribution
# Parameters
n <- 50
p <- 0.85

# i. Distribution of X
cat("Problem 1\n")
cat("i. The distribution of X is Binomial with n = 50 and p = 0.85\n")

# ii. Probability that at least 47 students passed (P(X >= 47))
prob_at_least_47 <- 1 - pbinom(46, size = n, prob = p)
cat("ii. Probability that at least 47 students passed:", prob_at_least_47, "\n\n")

# Problem 2: Poisson Distribution
# Parameters
lambda <- 12

# i. Random variable
cat("Problem 2\n")
cat("i. The random variable X is the number of customer calls received in one hour\n")

# ii. Distribution of X
cat("ii. The distribution of X is Poisson with lambda = 12\n")

# iii. Probability that exactly 15 calls are received
prob_exactly_15 <- dpois(15, lambda = lambda)
cat("iii. Probability that exactly 15 calls are received:", prob_exactly_15, "\n")
