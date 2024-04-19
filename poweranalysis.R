

# Load necessary library 
install.packages("pwr") 
library(pwr) 

#Calculating effect size based on undergraduate research results 
mean_straightened <- 1.65 
mean_remeandered <- 1.88 
pooled_sd <- 0.318 
effect_size <- (mean_straightened - mean_remeandered) / pooled_sd 


# Set parameters 
effect_size <- abs(effect_size) 
alpha <- 0.05 
power <- 0.80 
n <- 60  # Sample size per group, i.e. total kick sampling points per meander type. 

# Perform power analysis for two-sample t-test 
power_analysis <- pwr.t.test(n = n, d = effect_size, sig.level = alpha,  
                             power = NULL, alternative = "greater",  #This is a single-tailed test, due to undergraduate research result 
                             type = "two.sample") 
power_analysis #This assumes independence of data points in a single river 
