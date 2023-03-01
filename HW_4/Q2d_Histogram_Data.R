# Written Homework 4 Histogram

# Question 2d) Histogram
data <- c(17, 57, 63, 73, 76, 81, 86, 94,
					18, 58, 64, 73, 76, 83, 87, 94,
					21, 58, 65, 73, 77, 84, 90, 95,
					27, 60, 70, 74, 77, 85, 90, 96,
					30, 61, 70, 75, 79, 86, 91, 97,
					48, 61, 70, 75, 80, 86, 91, 99,
					54, 62, 72, 76, 80, 86, 92, 104
)

median(data)

quantile(data)

iqr <- IQR(data)
iqr

lower_fence <- quantile(data)[2]
lower_fence - (1.5 * iqr)

upper_fence <- quantile(data)[4]
upper_fence + (1.5 * iqr)

boxplot(data, horizontal=TRUE)

hist(data, right = FALSE)
