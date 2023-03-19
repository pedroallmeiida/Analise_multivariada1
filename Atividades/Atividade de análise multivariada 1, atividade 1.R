#Exemplo 1 
x1 <- c(34,26,82,5)
x2 <- c(55.5,47,105,7.5)

#Médias
mean(x1)
mean(x2)

#Variancias
var(x1)
var(x2)

#Covariancia
cov(x1,x2)


#Exemplo 2
y1 <-c(92,65,8)
y2 <-c(128,64,10)
y3 <-c(34,2,1)

#Medias
mean(y1)
mean(y2)
mean(y3)

#Covariancia
cov(y1,y1)
cov(y1,y2)
cov(y1,y3)
cov(y2,y2)
cov(y2,y3)
cov(y3,y3)

#Correlação
cor(y1,y1)
cor(y1,y2)
cor(y1,y3)
cor(y2,y2)
cor(y2,y3)
cor(y3,y3)

#Para melhor visualização, podemos fazer a matriz de correlação das variáveis:
mc = matrix(c(cor(y1,y1),cor(y1,y2),cor(y1,y3),cor(y1,y2),cor(y2,y2),cor(y2,y3),cor(y1,y3),cor(y2,y3),cor(y3,y3)),nrow = 3,ncol=3,byrow = T)
mc


