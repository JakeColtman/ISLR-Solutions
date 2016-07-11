### Solutions to chapter 2

college = read.csv("College.csv")
fix(college)

rownames(college) = college[,1]
fix(college)
college= college[,-1]  # Note that this removes the first column rather than taking only the last
fix(college)

summary(college)

pairs(college[,1:10])

attach(college)
Private = as.factor(Private)
plot(Private, Outstate)

Elite = rep("No", nrow(college))
Elite[college$Top10perc>50] = 'Yes'
Elite = as.factor(Elite)
college = data.frame(college, Elite)

plot(Elite, Outstate)

par(mfrow=c(2,2))
hist(Outstate, breaks = 5)
hist(Outstate, breaks = 10)
hist(Outstate, breaks = 15)
hist(Outstate, breaks = 20)

hist_different_buckets <- function(data, num_breaks){
    number_of_plots <- length(num_breaks)  
    x <- ceiling(number_of_plots / 2)
    par(mfrow=c(x,x))
    for(num_break in num_breaks){
      hist(data, breaks = num_break)
    }
  }
hist_different_buckets(Outstate, c(1,10,100,500))
