##### R Project 5: Central Limit Theorem
##### Name: Kevin Cordero
##### Version Number: 2



## (C1) Load the file Student_Survey_Dataset.csv into R.
# Save the weight and politics vectors described in the PDF.

survey <- read.csv("/home/kevin/School/STAT-381/Project_5/Student_Survey_Dataset.csv")
weight <- survey$Weight
politics <- survey$Politics_3Cat


## (C2) Table of politics
politicstable <- table(politics)


	# Copy and paste results here
  # Conservative      Liberal     Moderate 
  #    25               154           98 



	# What category has the most number of students? 
  # Liberal


	# What category has the least number of students? 
  # Conservative


## (C3) Find estimates for the Mean, Variance, Standard Deviation Estimates for weight using Built-In R Functions

	# Mean Code
  mean_w <- mean(weight)
	# Mean = 154.6693


	# Variance Code
	variance_w <- var(weight)
	# Variance = 809.9598


	# Standard Deviation Code
	stdev_w <- sd(weight)
	# Standard deviation = 28.45979


## (C4) Histogram of weight
	## Remember to save your plot and also submit it to Gradescope.
  hist(weight, right=FALSE, breaks = seq(90,290,10), main = "Histogram - Weight", xlim = range (50,300))


	# Describe your histogram:
  # Skew = right skewed
  


# (C5) Shapiro-Wilk test on weight
  shapiro.test(weight)

	# Copy and paste results here : 
  # W = 0.94986, p-value = 3.866e-08


	# Do you think that your population is normally distributed?
	# Reason: population is not normally distributed because p value is less than 0.05. 



	

# (C6) Copy and paste function, then run it.

  sampling_jp <- function(dataset, seed_value, num_samples, sizejp){
    samples1 <- matrix(NA, nrow = num_samples, ncol = sizejp)
    set.seed(seed_value)
    for(i in 1:num_samples){
      samples1[i,] <- sample(dataset, size = sizejp, replace = TRUE)
    }
    rowmeans1 <- rowMeans(samples1)
    graph <- hist(rowmeans1, right = FALSE, xlab = "Sample Means",
                  main = "Histogram",
                  sub = paste("Size = ", sizejp))
    sw <- shapiro.test(rowmeans1)
    result <- list(SampleMeans = rowmeans1, Shapiro = sw, Histogram = graph)
    return(result)
  }


# (Q7) Describe the difference between the terms "number of samples" and "sample size".

	# Number of Samples (more information than "number of samples" is needed):
  # Number of samples is the total number of measurements
  

	# Sample Size:
  # Sample size is the number of individual datapoints in each measurements


# (Q8) Describe what each individual part is doing in (C6) for code provided

	# sample() does:
  # sample() takes a certain number of random sample sfrom a dataset

	# dataset does:
  # dataset is a list that contains the values in which sample is going to take from


	# size = sizejp does (also include what sizejp means):
  # size is the number of datapoints to choose from the dataset so sizejp specifies the number of elements to be taken from each sample, essentially being the sample size, 5
  

	# replace = TRUE does:
  # replace indicates that every sample taken from the dataset should be replaced


  
# (C9) Build sampling distribution of samples of weight
	## Remember to save your histogram and also submit it to Gradescope.

	# Code:
  run1 <- sampling_jp(weight, seed_value = 172, num_samples = 132, sizejp = 5)


	
	# Copy and paste Shapiro-Wilk test results here
  # W = 0.94863, p-value = 7.829e-05



	




# (C10) Build sampling distribution of samples of weight
	## Remember to save your histogram and also submit it to Gradescope.

	# Code:
  run2 <- sampling_jp(weight, seed_value = 172, num_samples = 132, sizejp = 452)



	
	# Copy and paste Shapiro-Wilk test results here
  # W = 0.99592, p-value = 0.9729





# (Q11) From (C9): Does it appear normally distributed?  Why or why not?
	# Normally Distributed (Yes or No):
  # No

	# Reason using histogram:
  # Histogram is clearly right skewed.


	# Reason using the Shapiro-Wilk Test:
  # The p-value of the shapiro-wilk test is 7.829e-05, much lower than 0.05.






# (Q12) From (C10): Does it appear normally distributed?  Why or why not?
	# Normally Distributed (Yes or No):
  # Yes

	# Reason using histogram:
  # Histogram has mostly data concentrated in the center, with no noticable shift in either direction.


	# Reason using the Shapiro-Wilk Test:
  # The p-value of 0.9729 is larger than 0.05




# (Q13) CLT?
	# Can CLT be used in (C9)?:
  # No

	# Reason:
  # CLT cannot be used because the sample size is less than 30 and is therefore not sufficiently large


	# Can CLT be used in (C10)?:
  # Yes

	# Reason:
  # CLT can be used because the sample size is above 30 and is sufficiently large.






# (Q14) Expected Value of the Sample Mean using CLT formulas

	# Code for first sample size:
  run1_average <- mean(weight)
  run1_average

	# Copy and paste results here
  # 154.6693

	# Code for second sample size
  run2_average <- mean(weight)
  run2_average

	# Copy and paste results here
  # 154.6693
	
	
# (Q15) Standard Deviation of the Sample Mean using CLT formulas

	# Code for first sample size:
  run1_stdev <- sd(weight)
  run1_stdev

	# Copy and paste results here
  # 28.45979


	# Code for second sample size:
  run2_stdev <- sd(weight)
  run2_stdev

	# Copy and paste results here
  # 28.45979
	
	
	
# (C16) Average of the Sample Means from C9 and C10

	# Code for average of sample means from C9
  run1_average_sample <- mean(run1$SampleMeans)
  run1_average_sample

	# Copy and paste results here
  # 154.7276
  


	# Code for average of sample means from C10
  run2_average_sample <- mean(run2$SampleMeans)
  run2_average_sample

	# Copy and paste results here
  # 154.6293
  
	
	
# (C17) Standard Deviation of the Sample Means from C9 and C10

	# Code for standard deviation of sample means from C9
  run1_stdev_sample <- sd(run1$SampleMeans) / sqrt(length(run1$SampleMeans))
  run1_stdev_sample

	# Copy and paste results here
  # 1.083962
  


	# Code for standard deviation of sample means from C10
  run2_stdev_sample <- sd(run2$SampleMeans) / sqrt(length(run2$SampleMeans))
  run2_stdev_sample

	# Copy and paste results here
  # 0.104973
  
	
# (Q18)
	# What was the sample statistic used?
  # the sample statistec being used was mean


	# When we found the sample statistic value, did we find it
	# from the same population each time?
  # when we found the sample statistic value it was samples taken from the same population each time.
  





# (Q19) Does the CLT approximation appear to get better as the sample size increased? Why or why not?

	# Does it get better?
  # Yes when the sample size increases it gets better


	# Reason:
  # The CLT approximation appears to get better as the sample size increases because each individual sample has values close to the true population





