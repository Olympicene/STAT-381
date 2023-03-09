night_mean = 2.99
day_mean = 2.58

night_sd = 0.75
day_sd = 0.62

night_students <- 20
day_students <- 40

expected_value <- night_mean - day_mean
expected_value

sd <- sqrt(night_sd^2/night_students + day_sd^2/day_students)
sd



pnorm((0-expected_value)/sd)

######################################################
p <- 0.74

1-pnorm(1.46)
