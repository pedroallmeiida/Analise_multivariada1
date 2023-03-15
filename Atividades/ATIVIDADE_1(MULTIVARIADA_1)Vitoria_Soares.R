#AN?LISE MULTIVARIADA 1
#PROFESSOR: PEDRO ALMEIDA 
#ALUNA : VITORIA SOARES DE SOUZA

###########################################################################

#QUEST?O 1:


x1 = c(34,26,82,5)
x2 = c(55.5,47,105,7.5)

#Média de x1
mean(x1) 
#Média de x2
mean(x2)

#Variancia de X1 com reajuste no calculo devido a ser amostra
varx1=var(x1)
varx1

#Variancia de X2 com reajuste no calculo devido a ser amostra
varx2=var(x2)
varx2

#Covariancia de X1 com X2
cov(x1,x2) 

#############################################################################

#QUEST?O 2


X1 = c(92,65,8)
X2 = c(128,64,10)
X3 = c(34,02,1)

#Média X1
mean(X1) 
#Média X2
mean(X2) 
#média X3
mean(X3)

#vetor de medias
array_X = c(X1,X2,X3) 
cov(X1,X1)
cov(X2,X2)
cov(X3,X3)
cov(X1,X2)
cov(X1,X3)
cov(X2,X3)

matrixcovariancia =matrix(c(var(X1),cov(X1,X2),cov(X1,X3),cov(X1,X2),var(X2),cov(X2,X3),
                    cov(X1,X3),cov(X2,X3),var(X3)),nrow = 3,ncol = 3,byrow = TRUE)

#Matrix de covariancia
matrixcovariancia 
#corelação de x1 com x2
cor(X1,X2) 
#corelação de x1 com x3
cor(X1,X3) 
#corelação de x2 com x3
cor(X2,X3) 
#corelação de x1 com x1
cor(X1,X1) 
#corelação de x2 com x2
cor(X2,X2)
#corelação de x3 com x3
cor(X3,X3) 

#matrix de corelação
matrixcorrelacao= matrix(c(cor(X1,X1),cor(X1,X2),cor(X1,X3),cor(X1,X2),cor(X2,X2),
                     cor(X2,X3),cor(X1,X3),cor(X2,X3),cor(X3,X3)),nrow = 3,ncol = 3, byrow = TRUE)

matrixcorrelacao 
