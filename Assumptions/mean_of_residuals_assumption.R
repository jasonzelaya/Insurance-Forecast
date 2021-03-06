## Import the csv and make sure the data does not have the character vectors converted to factors
df = read.csv('insurance_cleaned.csv', stringsAsFactors = FALSE)

## Build the linear model. Exclude the sex_male and smoker_yes columns because they are dummy variables
mod <- lm(charges ~ age + bmi + children + sex_female + smoker_no + region_northeast + region_northwest + region_southeast + region_southwest, data = df)

## Calculate the mean of residuals to determine whether or not the assumption that the mean of residuals is close to zero holds true
mean(mod$residuals)

## Result: -5.173234e-13
## Conclusion: The assumption that the mean of residuals is close to zero holds true



#modAge <- lm(charges ~ age, data = df)
#mean(modAge$residuals)