#############################################################
#a
?state.x77
st = as.data.frame(state.x77)
dim(st)
str(st)
#b
par(mfrow = c(1,2))

plot(st$Income, st$`Life Exp`,  main = "Life Exp vs. Income")
abline(lm(st$`Life Exp` ~ st$Income), col = "red")

plot(st$Illiteracy, st$`Life Exp`, main = "Life Exp vs. Illiteracy")
abline(lm(st$`Life Exp` ~ st$Illiteracy), col = "blue")
#Average life expectancy generally increases with capita income but decreases with Illiteracy rates. 
###########################################################################
par(mfrow = c(1,2))
st1 = subset(st, Income < mean(Income)) 
st2 = subset(st, Income >= mean(Income)) 

plot(st1$Illiteracy, st1$`Life Exp`,  main = "Life Expectancy vs. Illiteracy, low-income")
abline(lm(st1$`Life Exp` ~ st1$Illiteracy), col = "blue")
plot(st2$Illiteracy, st2$`Life Exp`,  main = "Life Expectancy vs. Illiteracy, high-income")
abline(lm(st2$`Life Exp` ~ st2$Illiteracy), col = "blue")
###########################################################################
st1 = subset(st, Illiteracy < mean(Illiteracy)) 
st2 = subset(st, Illiteracy >= mean(Illiteracy)) 

plot(st1$Income, st1$`Life Exp`,  main = "Life Exp vs. Income, low literacy")
abline(lm(st1$`Life Exp` ~ st1$Income), col = "red")

plot(st2$Income, st2$`Life Exp`,  main = "Life Exp vs. Income high literacy")
abline(lm(st2$`Life Exp` ~ st2$Income), col = "red")