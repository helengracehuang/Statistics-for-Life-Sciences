grade <- read.csv("http://www4.stat.ncsu.edu/~lu/ST505/st745.csv")
x <- grade[,1] # Middle term exam score
y <- grade[,2] # Final exam score
cor(x,y)
plot(x,y)
lm1 = lm(y~x)
### Least squares regression results (inference based on normal assumption)
summary(lm1)
#Pvalue for slope is 0.000292
slope_ob = summary(lm1)$coef[2]
n = length(y)
slope = c()
for(k in 1:10000)
{
  idY = sample(n, n, replace=F)
  y_k = y[idY]
  x_k = x
  lmk = lm(y_k~x_k)
  slope[k] = summary(lmk)$coef[2]
}
hist(slope)
abline(v = slope_ob,col = "red" )
2*mean(slope>slope_ob)#This is pvalue

