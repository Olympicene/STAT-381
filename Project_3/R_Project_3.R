##### R Project 3: Binomial Distribution
##### Name: Kevin Cordero
##### Version Number: 3



### Part 1
## (C1): Store the size of your distribution
number_Bernoulli <- 28



## (C2) Store your probability of successes
prb <- 0.76



## (C3) Create a vector from 0 through the number of Bernoulli Trials of your distribution.
number_success <- 0:number_Bernoulli



## (C4) Find Binomial Probabilities.
probabilities <- dbinom(number_success, 28, .76)



## (C5) Create a barplot of your probabilities. Include in your barplot function names.arg = number_success (no quotes). Set the x-axis label to be “Number of Successes”,
 ## and the y-axis label to be “Binomial Probabilities (PMF)”. Have the limits on the y-axis go
## from 0 to 0.21.
barplot(probabilities,xlab = "Number of Successes" , ylab = "Binomial Probabilities (PMF)", ylijm = c(0,.21), names.arg = number_success)


### Part 2
## (C6) Random Sampling
set.seed(1133)
values <- rbinom(73,28,0.76)


### Questions
## (Q1) Describe the barplot.
	# X-value for the highest bar:
	# Is the highest bar in the center or somewhat off to the side of the graph? The highest bar is on the right side of the graph not at the center. 

	# Do all of the bars go to the same height, or are they all different? All of the bars go to different heights. 

	# Code for calculating P(X <= (see PDF for value))
  prob <- pbinom(22,28,.76)


	# Answer from above code: .6950


	# If you had to shade your barplot from Part 1 corresponding to the calculation you just made, what part(s) of the barplot would be shaded? (You don't actually have to shade your graph, just describe it in words.)
  # Answer: I would shade all of the bars that are less than or equal to 22. 


## (Q2) Expected Value of Distribution?
	# Code: 
  expectedValue <- number_Bernoulli * prb


	# Result from Code: 21.28



## (Q3) Standard Deviation of Distribution?
	# Code: 
  sd <- sqrt(number_Bernoulli*prb*(1-prb))

	# Result from Code: 2.2599


## (Q4) Mean of random sample?
	# Code:
  mean <- mean(values)


	# Result from Code: 21.0136



## (Q5) Standard Deviation of random sample?
	# Code:
  standardDeviation <- sd(values)


	# Result from Code: 2.418



## (Q6) Why do you think the mean and standard deviation from the sample is not exactly the same as the expected value and standard deviation from the distribution?
	# Answer: I believe that the standard deviation and the mean are not the exact same as the expected value and standard deviation from the distribution because the sample size varies between the two. 
  # There would be more precision when there is a larger population

## (Q7) Share an example of a real life scenario that uses the Binomial Distribution.
	# Example: An example of a real life binomial distribution is quality control. Suppose a product needs to meet a minimum defect %,
  # If we take a random subset of light bulbs and see if it meets a threshold we can conclude a % of the batch is up to standard


	# Explain how your example meets the criteria for a Binomial Distribution:
  # The example follows a binomial distribution because it has a fixed number of trials. In addition, all of the trials are independent and do not affect the next. 
  # In addition, the probability of success is the same in all trials (50%). 