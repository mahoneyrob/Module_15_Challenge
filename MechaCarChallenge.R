install.packages("dplyr")
library("dplyr")
install.packages("tidyverse")
library("tidyverse")

# Deliverable 1
mpg_csv <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_csv) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_csv))  #generate summary statistics
# Deliverable 2
suspension_csv <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_csv %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = "keep")

lot_summary <- suspension_csv %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = "keep")
# Deliverable 3
t.test(suspension_csv$PSI,mu=1500)

Lot1 <- subset(suspension_csv,Manufacturing_Lot=="Lot1")
Lot2 <- subset(suspension_csv,Manufacturing_Lot=="Lot2")
Lot3 <- subset(suspension_csv,Manufacturing_Lot=="Lot3")

t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)
