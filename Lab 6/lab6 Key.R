a = 1:5
a
a[a<4]
a[c(T,F,T,T,F)]
df<-data.frame(PlantGrowth)
#By puting attatch(), you do not need to 
#do something like table$colName to use 
#the vector in the column anymore.
#You can use the column name right away.
attach(df)
min(weight[group=="ctrl"])
quantile(weight[group=="ctrl"], 0.25)
median(weight[group=="ctrl"])
max(weight[group=="ctrl"])
#Five number summary of Control
c(min(weight[group=="ctrl"]), quantile(weight[group=="ctrl"], 0.25), median(weight[group=="ctrl"])   ,quantile(weight[group=="ctrl"], 0.75), max(weight[group=="ctrl"])  ) 

#Five number summary of Treatment2
c(min(weight[group=="trt2"]), quantile(weight[group=="trt2"], 0.25), median(weight[group=="trt2"])   ,quantile(weight[group=="trt2"], 0.75), max(weight[group=="trt2"])  ) 
boxplot(weight[group=="ctrl"], weight[group=="trt2"], names=c("ctrl", "trt2"), main="Comparison of Treatment 2 and Control")
#########################################################

x_bar2<-mean(weight[group=="trt2"])
x_bar1<-mean(weight[group=="ctrl"])
se.stat<-sqrt(sd(weight[group=="trt2"])^2/length(weight[group=="trt2"]) +sd(weight[group=="ctrl"])^2/length(weight[group=="ctrl"])  ) 
teststat<-((x_bar2-x_bar1)-0)/se.stat
teststat #strong evidence against null.
#p-value according to normal dist
1-pnorm(teststat)