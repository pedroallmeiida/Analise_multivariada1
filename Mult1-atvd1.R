#Questão1

x1<-c(34,26,82,5)
x2<-c(55.5,47,105,7.5)

###médias###

mean(x1)
mean(x2)

###variancia###

var(x1)
var(x2)

###covariância###

dados1<-data.frame(x1,x2)
cov(dados1)


#Questão2

x1<-c(92,65,8)
x2<-c(128,64,10)
x3<-c(34,2,1)

####média###

mean(x1)
mean(x2)
mean(x3)

###covariância###

Dados1<-data.frame(x1,x2)
cov(Dados1)

Dados2<-data.frame(x1,x3)
cov(Dados2)

Dados3<-data.frame(x2,x3)
cov(Dados3)

###correlação###

cor(x1,x2)
