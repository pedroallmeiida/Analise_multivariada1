# Aluno: Igor Barbosa Negreiros
# Disciplina: Analise Multivariada 1
# Professor: Pedro Almeida

#Atv 1
x_1 = c(34,26,82,5)
x_2 = c(55.5,47,105,7.5)

#Médias

mean_x1 = mean(x_1);mean_x1 #Média de x1
mean_x2 = mean(x_2);mean_x2 #Média de x2

#Variancias

var_x1 = var(x_1);var_x1 #Variancia de X1
var_x2 = var(x_2);var_x2 #Variancia de X2

#Covariancia

cov(x_1,x_2) #Covariancia de X1 com X2

#Atv 2
x1 = c(92,65,8)
x2 = c(128,64,10)
x3 = c(34,02,1)

#Médias

mean_x1= mean(x1) #Média x1
mean_x1
mean_x2= mean(x2) #Média x2
mean_x2
mean_x3= mean(x3) #média x3
mean_x3

#Vector de Medias

array_x = c(mean_x1,mean_x2,mean_x3)
#Covariancias
var(x1) #Variancia de x1 que é cov de x1 com ele mesmo
var(x2) #Variancia de x2 que é cov de x2 com ele mesmo
var(x3) #Variancia de x3 que é cov de x3 com ele mesmo
cov_x1_x2 =cov(x1,x2)
cov_x1_x3 =cov(x1,x3)
cov_x1_x3 =cov(x2,x3)

#Matrix de covariancia

matrixcov =matrix(c(var(x1),cov(x1,x2),cov(x1,x3),cov(x1,x2),var(x2),cov(x2,x3),
                    cov(x1,x3),cov(x2,x3),var(x3)),nrow = 3,ncol = 3,byrow = TRUE)
matrixcov

#corelações

cor(x1,x2) #corelação de x1 com x2
cor(x1,x3) #corelação de x1 com x3
cor(x2,x3) #corelação de x2 com x3
cor(x1,x1) #corelação de x1 com x1
cor(x2,x2) #corelação de x2 com x2
cor(x3,x3) #corelação de x3 com x3

#matrix de corelação

matrixcor = matrix(c(cor(x1,x1),cor(x1,x2),cor(x1,x3),cor(x1,x2),cor(x2,x2),
                     cor(x2,x3),cor(x1,x3),cor(x2,x3),cor(x3,x3)),nrow = 3,ncol = 3, byrow = TRUE)
matrixcor

