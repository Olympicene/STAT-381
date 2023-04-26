##### Final Project
##### Name: 
##### Version Number: 1




## Task 1: Load the Dataset into R (Code)
dataset <- read.csv("/home/kevin/School/STAT-381/Project_Final/lifeexp_by_country381.csv")


## Task 2: Summary Statistics for life.expectancy
	# a) Summary Stats Code and Results
  summary(dataset$life.expectancy)
  # Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  # 51.00   66.15   74.00   71.84   76.80   88.00 
	
	# b) Variance Code and Results
  var_life_expectancy <- var(dataset$life.expectancy)
  n <- length(dataset$life.expectancy)
  
  var_life_expectancy * ((n-1)/n)
  # 61.73822
	
	# c) Standard Deviation Code and Results
  sd(dataset$life.expectancy)
  # 7.880443
	
	# d) IQR Code and Results
  IQR(dataset$life.expectancy)
  # 10.65

	# e) Number of values for this variable. Code and Results
  length(dataset$life.expectancy)
  # 171

	# f) Mean / Median Comparison: 
  # ?
  # The mean of 71.84152 is less than the median of 74

	# g) SD / IQR comparison: 
  # ?
  # The SD of 7.880443 is less than the IQR of 10.65




	
## Task 3: Summary Statistics for schooling
  # a) Summary Stats Code and Results
  summary(dataset$schooling)
  # Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  # 5.00   11.00   13.10   13.01   15.00   20.40 
  
  # b) Variance Code and Results
  var_schooling <- var(dataset$schooling)
  n <- length(dataset$schooling)
  
  var_schooling * ((n-1)/n)
  # 7.956375
  
  # c) Standard Deviation Code and Results
  sd(dataset$schooling)
  # 2.828989
  
  # d) IQR Code and Results
  IQR(dataset$schooling)
  # 4
  
  # e) Number of values for this variable. Code and Results
  length(dataset$schooling)
  # 171
  
  # f) Mean / Median Comparison: 
  # ?
  # The mean of 13.10 is very close to the median of 13.01
  
  # g) SD / IQR comparison: 
  # ?
  # The SD of 2.828989 is less than the IQR of 4

	
	
	
	


	
## Task 4: Histogram for life.expectancy
	## Remember to save your plot and also submit it to Gradescope.

	# a) Code:
  hist(dataset$life.expectancy, breaks = c(seq(45, 100, by=5)), right=FALSE, main = "Histogram - Life.Expectancy")


	# c) Describe histogram: relatively symmetric, skewed, or neither?
  # life expectancy is skewed to the left 


	# c) Describe histogram: unimodal or bimodal or multimodal?
  # the histogram is unimodal


	
	
	

	
## Task 5: Boxplot for life.expectancy
	## Remember to save your plot and also submit it to Gradescope.

	# a) Code:
  boxplot(dataset$life.expectancy, right=FALSE, main = "Boxplot - Life.Expectancy", horizontal=FALSE, ylim = range(50,90))
	

	# c) Are there outliers present?
  # There are no outliers present
		
		
		



## Task 6: Shapiro-Wilk Test for life.expectancy using 0.02 as the cutoff
	# a) Code:
  shapiro.test(dataset$life.expectancy)


	# b) Copy and paste results here
  # W = 0.96755, p-value = 0.0005014


	# c) Do you think that your population is normally distributed?
  # I think that the population is not normally distributed


	# c) Reason:
  # I believe it is not normally distributed because the p value is just not above 2%

		
	# d) Does your decision here match what you are seeing with your histogram from Task 4? Why or why not?
  # My decision does match what I am seeing with the histogram. The histogram clearly skews left and is not exactly normally distributed
		
		
		
		
		

		
## Task 7: Histogram for schooling
	## Remember to save your plot and also submit it to Gradescope.

  # a) Code:
  hist(dataset$schooling, breaks = c(seq(3, 23, by=4)), right=FALSE, main = "Histogram - Schooling",
       ylim = range(0, 100))
  
  
  # c) Describe histogram: relatively symmetric, skewed, or neither?
  # life expectancy is relatively symmetric 
  
  
  # c) Describe histogram: unimodal or bimodal or multimodal?
  # the histogram is unimodal
		
		
		
		
		



## Task 8: Boxplot for schooling
	## Remember to save your plot and also submit it to Gradescope.

  # a) Code:
  boxplot(dataset$schooling, right=FALSE, main = "Boxplot - Schooling", horizontal=FALSE, ylim=range(0,25))
  
  
  # c) Are there outliers present?
  # There are no outliers present
		
		
		
		



		
## Task 9: Shapiro-Wilk Test for Schooling using 0.02 as the cutoff
  # a) Code:
  shapiro.test(dataset$schooling)
  
  
  # b) Copy and paste results here
  # W = 0.9957, p-value = 0.9072
  
  
  # c) Do you think that your population is normally distributed?
  # I think that the population is normally distributed
  
  
  # c) Reason:
  # I believe it is normally distributed because the significance value is close to 90% and very much above the 2% benchmark
  
  
  # d) Does your decision here match what you are seeing with your histogram from Task 4? Why or why not?
  # My decision does match what I am seeing with the histogram. It looks very normally distributed.

		
		
		
		
		

		
## Task 10: Compare average schooling for different continents. Create a confidence interval, assuming equal variances. (See PDF for CI to create.)

	# a) Split Dataset:
  americas <- dataset$schooling[dataset$continent == "Americas"]
  NOTamericas <- dataset$schooling[dataset$continent != "Americas"]

	# b) Code:
  t.test(americas, NOTamericas, alternative = "two.sided", var.equal = TRUE, conf.level = 0.978)


	# c) Copy and paste results here
  # t = 1.009, df = 169, p-value = 0.3144
  # alternative hypothesis: true difference in means is not equal to 0
  # 97.8 percent confidence interval:
  #   -0.7225866  1.8418312
  # sample estimates:
  #   mean of x mean of y 
  # 13.46250  12.90288 
  


	# d) State the parameter the confidence interval is for.
  # The parameter is for the difference of americas schooling mean and non-american schooling mean
  # mean(americas) - mean(NOTamericas)

		
	# e) Write down the confidence interval.
  # The confidence interval is (-0.7225866 < mu < 1.8418312)


	# f) Write an interpretation of your confidence interval.
  # You can be 97.8% confident that if the difference of the means is contained within the interval of  
  # -0.7225866 and 1.8418312 that the true mean is equal to zero. 
  

	# g) We are interested in whether there is evidence that there is specific value difference between the two groups. (See PDF for more specifics.)
		# Does this value seem plausible?
    # This value seems plausible

		# Reason why or why not.
    # This is true because the confidence interval contains the specific value of 1. 
    # 1 < 1.8418312 and 1 > -0.7225866
		
		
		
		
		
		
		
## Task 11: Create a confidence interval for the proportion of prevalence of thinness of children 5-9 years old (variable thin_child) that are a specific one.

	# a) Code to observe how many values exist per age group.
  addmargins(table(dataset$thin_child))
  # High    Low Medium    Sum 
  # 70     57     44    171 

	# b) Check the success / failure condition.
		# Code (if needed):

		# Expected Number of Successes = 57
		# Expected Number of Failures = 114
		# Can we use the Normal Distribution to approximate this confidence interval?
    # We can use normal distribution to approximate this confidence interval because the number
    # of successes is at least 5 and the number of failures is also at least 5

	# c) Code for Confidence Interval:
  prop.test(x=57, n=114+57, conf.level=0.973, correct = FALSE)


	# d) Copy and paste results here
  # data:  57 out of 114 + 57, null probability 0.5
  # X-squared = 19, df = 1, p-value = 1.307e-05
  # alternative hypothesis: true p is not equal to 0.5
  # 97.3 percent confidence interval:
  #   0.2592239 0.4167114
  # sample estimates:
  #   p 
  # 0.3333333 

	
	# e) State the parameter the confidence interval is for.
  # The parameter is for the proportion of prevalence of thinness of children
  # 5-9 years old (variable thin_child) that are “Low”.
  # (# of LOW thinness) / (# of all thinness)

	
	# f) Write down the confidence interval.
  # The confidence interval is (0.2592239 < mu < 0.4167114)







## Task 12: Create a confidence interval for the variance of schooling. (See PDF for CI to create.)

	# a) Code:
  varTest(dataset$schooling, alternative = "two.sided", conf.level = 0.907)

	
	# b) Copy and paste results here
  # $statistic
  # Chi-Squared 
  # 1360.54 
  # 
  # $parameters
  # df 
  # 170 
  # 
  # $p.value
  # [1] 0
  # 
  # $estimate
  # variance 
  # 8.003177 
  # 
  # $null.value
  # variance 
  # 1 
  # 
  # $alternative
  # [1] "two.sided"
  # 
  # $method
  # [1] "Chi-Squared Test on Variance"
  # 
  # $data.name
  # [1] "dataset$schooling"
  # 
  # $conf.int
  # LCL      UCL 
  # 6.730516 9.698590 
  # attr(,"conf.level")
  # [1] 0.907
  # 
  # attr(,"class")
  # [1] "htestEnvStats"

	
	# c) State the parameter the confidence interval is for.
  # The parameter is for the variance of the years of schooling

	
	# d) Write down the confidence interval.
  # The confidence interval is (6.730516 < variance < 9.698590)


	# e) What assumption did we need to make to construct this confidence interval?
  # we had to assume the true population is normally distributed


	# e) Do you think that this assumption was met? You should reference an earlier Task from this project to answer this question.
  # I beleive this assumption was met, in task 7 schooling was clearly normally distributed

	
	
	
	

	
## Task 13: Hypothesis Test for life.expectancy
	# a) What conditions must you satisfy to perform this test? Do you think they are met?  Why or why not?
    # Life expectancy may be normally distributed. 
    # The sample must be random
    # conditions are met because it is normal and t.test wil lget random samples



	# b) State the hypotheses:
		#H0: the population mean of life.expectancy is equal to 73
		#H1: the population mean of life.expectancy is less than 73
	
	
	# c) Code:
  t.test(dataset$life.expectancy, mu = 73, alternative = "less", conf.level=0.969)
	
	
	# d) Copy and paste results here
  # t = -1.9224, df = 170, p-value = 0.02812
  # alternative hypothesis: true mean is less than 73
  # 96.9 percent confidence interval:
  #   -Inf 72.97367
  # sample estimates:
  #   mean of x 
  # 71.84152 
	
	# e) State the Test Statistic Value:
  # t = -1.9224

	# f) State the P-Value:
  # p-value = 0.02812
	
	# g) Decision from P-Value (see PDF for significance level):
  # we reject H0 because our p-value of 0.02812 is less than our significance level of 3.1%
  
	
	# h) Conclusion from P-Value:
  # out conclusion is that the true population mean of life.expectancy is less to 73

	
	# i) State the critical value. Provide your code and results.
  qt(0.031, 170, lower.tail=TRUE)
  # -1.87868
			
	# i) State the critical region.
  # Reject H0 if t < -1.87868


	# j) Decision from Critical Region:
  # Reject H0 since -1.9224 < -1.87868 since test statistic is less thant t


	# j) Did you make the same decision based on the critical region that you did with your p-value?
  # Yes both p value and critical regions are the same answer






