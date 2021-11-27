# Summary

## Deliverable 1: Linear Regression to Predict MPG

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
It appears that Vehicle Length and Ground Clearance are the only factors that contribute to a non-random amount of variance to MPG as they are the only variables with a p-value less than 0.05.  Vehicle Weight, Spoiler Angle, and AWD have p-values above 0.05, indicating that the null hypothesis is valid and that those factors contribute random variance to the MPG of the vehicles. 

### Is the slope of the linear model considered to be zero? Why or why not?
The slope for this model should not be 0 as the p-value for the entire set is extremely small, and smaller than 0.05, coming in at a value of 5.35x10^-11.  This indicates that there is some correlation between some of the variables, and as indicated above, those variables should be the Vehicle Length and Ground Clearance.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
It appears that this model does do a decent job of predicting MPG for these cars.  The r-squared value is what is typically looked at when evaluating if the regression produces a good prediction, and in this case, we have an r-squared value of 0.715, meaning that this model has about a 71% chance of predicting the MPG for a car. 

## Deliverable 2: Summary Statistics on Suspension Coils

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
The current design specs meets the goal in some cases.  If you look at all lots as one, then yes, the variance is within the specs with a value of 62.3 PSI.  However, when you break out the data into the lots, you see that certain runs are more exact than others.  Lot 1 has the best outcome, with a variance just under 1, and Lot 2 is pretty good as well, with a variance of about 7.5.  The other thing to point out about these lots is that their mean and median are right in line with the 1500, which makes sense as their variance is very small.  The main deviation comes from Lot 3, where the variance is just over 170 PSI, well outside of the acceptable range.

## Deliverable 3: T-Tests on Suspension Coils
The T-Tests on each lot backup the analysis from Deliverable 2.  

The T-Test on lot 1 has a p-value of 1, with an extremely tight 95% confidence interval, essentially saying that 95% of the coils have a PSI of 1500 +/- 0.281.  We can accept the Null Hypothesis here and state that the difference between each coil is most likely due to random chance.  

The T-Test on lot 2, while not as profound as lot 1, still shows that we can accept the Null Hypothesis and state that any deviation is due to chance.  The P-value is 0.61, much higher than the 0.05 needed to reject the Null Hypothesis.  In addition, the mean is a little higher, but the 95% confidence interval will put the coils in the range of 1500.2 +/- 0.777.

The T-Test on lot 3 suggests that there may be an issue with some of the coils in that lot, and there is a good chance that the deviations are not due to chance.  We need to reject the Null Hypothesis for lot 3 and look in to a possible malfunction in the manufacturing of these coils.  The coils should either be disposed of, or tested individually to ensure that only coils that meet spec will be sold.  The P-value for this lot is under the 0.05 standard, coming in at 0.04, and the mean is a little lower, with a higher variation in the confidence interval.

## Deliverable 4: Study Design: MechaCar vs Competition
This study should be conducted on data over the last 5 years on metrics for MechaCar and their competition.

### What metric or metrics are you going to test?
I would test several different metrics which I believe are important to the consumer.  Among the metric, I would compare like car types, and in those car types run tests fuel efficiency, or MPG, cost, power, safety, acceleration, and customer satisfaction.  I would have my dependent variable be the lifetime cost of the car, taking the original purchase price and adding that to the maintenance cost, then subtracting the predicted resale value from the previous sum.

### What is the null hypothesis or alternative hypothesis?
The Null Hypothesis would be that the long term cost of the car is not influence by other factors, meaning that you can expect the cost to be consistent among all people making the purchase. 

The Alternative Hypothesis is that there are certain factors that can change the overall cost of the car over time.
    
### What statistical test would you use to test the hypothesis? And why?
I would run a multiple linear regression, similar to what was done in deliverable 1, as this would make it so we can determine which variables influence to overall cost of ownership.  We can also run a T-Test after a few years to compare the overall costs of ownership and see if there is a statistical reason if any costs vary significantly.

### What data is needed to run the statistical test?
In order to do this test, we will need to collect data on different cars that have been sold.  The data I would collect is sale price, maintenance price, resale price, MPG, and customer and safety ratings.