##### R Project 4: Normal Distribution
##### Name: Kevin Cordero
##### Version Number: 5


#############################
###### PART 1 ###############
###### GRAPH  ###############
#############################

## DENSITY FUNCTION
	## C1: Create x-values - code
  xvals_part1 <- seq(-3.1, 3.1, 0.005)


	## C2: Create y-values - code
  yvals_part1 <- dnorm(xvals_part1)
  

	## C3: Create Plot - code
	## Remember to save your plot and also submit it to Gradescope.
  plot(xvals_part1, yvals_part1, type = "l", main = "Standard Normal Probability Density Function",
       xlab = "Standard Normal Variable", ylab = "Density", lty = 1, col = "pink")

  mean <- mean(xvals_part1)
  mean
  
  variance <- var(xvals_part1)
  variance

#############################
###### PART 1 ###############
###### QUESTIONS  ###########
#############################

## Question 1: Largest approximate y value
	# Answer: 
  # The approximate largest y-value on my standard normal density function 0.4



## Question 2: Describe the Standard Normal Density Function
	# Answer:
  # My standard normal density function is symmetric with a noticeable bell shape


## Question 3: x-values
	# Do they stop?
  # The X-values do not stop.

	# Reason:
  # Normal distributions have no bounds. This is because any x value 
  # is technically possible. But the farther those values are from the mean they become more
  # Infinitesimally unlikely, so in its normal usage they can be safely ignored.

	# If they don't stop, what do they go to?
  # Normal distributions have no bounds and tend to positive and negative infinity.


## Question 4: Standard Normal Questions
	## a) What is the mean and variance of the standard normal distribution?
			## Mean = 0
			## Variance = 3.211088
	

	## b) What random variable abbreviation do we usually use to represent the standard normal distribution?
			## Answer: The standard random variable abbreviation we use is Z.
      

	
	## c) Based on graph in Part 1, what do the values on the horizontal axis represent?
			## Answer: The values must represent the z-score within a standard normal probability, 
      #          which is how many standard deviations a data point is away from the mean

#############################
###### PART 2 ###############
###### GRAPH  ###############
#############################

## CUMULATIVE DISTRIBUTION FUNCTION
## X ~ N(mean = ????; variance = ????) (see PDF for mean and variance values)


	## C4: Create x-values - code
  xvals_part2 <- seq(180, 300, 3)


	## C5: Create y-values - code
  yvals_part2 <- pnorm(xvals_part2, 240, sqrt(114))


	## C6: Create Plot - code
  plot(x = xvals_part2, y = yvals_part2, type = "l", main = "Normal CDF Function",
       xlab = "x-values", ylab = "Cumulative Probability P(X <= x)", lty = 1, col = "aquamarine4")


	## C7: Cumulative Probabilities - code
  cumulative_prob <- c(0.12, 0.32, 0.50, 0.68, 0.88)


	## C8: Find x-values associated with cumulative probabilities - code
  quantile_k <- qnorm(cumulative_prob, 240, sqrt(114))



	## C9: Overlay points on plot - code
  points(x = quantile_k, y = cumulative_prob, pch = 23, bg = "tomato3", col = "tomato3")


	## C10: Add text at each point - code0
  text(x= quantile_k, y = cumulative_prob, labels = paste("(", round(quantile_k,2), ", ", cumulative_prob,")", sep = ""), pos = 4)
	## Remember to save your plot and also submit it to Gradescope.  <- this is the only plot from Part 2 you need to submit.


#############################
###### PART 2 ###############
###### QUESTIONS  ###########
#############################

## Question 5: What do the y-values approach as x goes to +/- infinity?
	# As x goes towards -infinity: 
  # y-values approach 0

	# As x goes towards +infinity: 
  # y-values approach 1

  
## Question 6: Pick one of the points on your graph from part 2.  Write a probability statement involving the $x$- and $y$- coordinate values that describes how they relate to each other.

	# Point you will use: 
  # (235.01, 0.32)

	# Probability Statement: 
  # There is a 32% chance that a random sample from this population will be less than or equal to 235.01.




## Question 7: Create and answer your own probability question based on your Part 2 graph.
## Include your code and your final answer.
## Do NOT use a table or your calculator.

	# Question:
  # What is the value of x less than 250 that guarantees a 50% chance of a random sample falling between the interval [x, 250]?

	# Code:
  target_percent <- 0.50
  
  # get the cumulative probability of a value less than 250
  cumulative_of_250 <- pnorm(250, 240, sqrt(114))
  cumulative_of_250
  
  # find the difference in probability to get x's cumulative prob
  cumulative_of_x <- cumulative_of_250 - target_percent
  cumulative_of_x
  
  # use qnorm to get x
  x_value <- qnorm(cumulative_of_x, 240, sqrt(114))
  x_value

	# Answer: 
  # x = 235.1704


