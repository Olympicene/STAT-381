################################################ 47
#  critical value
qt(0.06, 283+609)

# pbinom(168, size=425, prob=0.33)

# pooled proportion
(204+487)/(283+609)

# test statistic
(0.72-0.8)/sqrt(0.77*(1-0.77)*((1/283)+(1/609)))

# junk
succ1 <- 647
size1 <- 696

succ2 <- 694
size2 <- 730

prop1 <- round(succ1/size1, 2)
prop1
prop2 <- round(succ2/size2, 2)
prop2

pooled <- round((succ1+succ2)/(size1+size2), 2)
pooled

# test statistic
test_stat <- (prop1-prop2)/sqrt(pooled*(1-pooled)*((1/size1)+(1/size2)))
test_stat

# p value from z value (two tail)
pnorm(test_stat) * 2

# p value from z value (one tail)
pnorm(test_stat)

################################################ 48

# where s^2 is the sample variance
sample_var <- 4.74

# sigma^2 is the population variance 
pop_var <- 4.75

# m is sample mean
m <- 7

# sig_lvl is the significance level
sig_lvl <- 0.10

# n is the sample size.
n <- 12

# test statistic
chi_square <- ((n-1)*sample_var) / pop_var
chi_square

# p-value (1 tail)
pchisq(chi_square, df = n-1, lower.tail = TRUE)

# p-value (2 tail)
pchisq(chi_square, df = n-1, lower.tail = TRUE) * 2
pchisq(chi_square, df = n-1, lower.tail = FALSE) * 2

# critical value (1 tail)
qchisq(sig_lvl, df = n-1, lower.tail = TRUE)

# critical value (2 tail)
qchisq(sig_lvl/2, df = n-1, lower.tail = TRUE)
qchisq(sig_lvl/2, df = n-1, lower.tail = FALSE)
