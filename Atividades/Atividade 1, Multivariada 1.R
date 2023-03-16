#Multivariada 1
#Giovana de Souza
#Atv 1
x_1 = c(34,26,82,5) #vetor x1
x_1
x_2 = c(55.5,47,105,7.5) #vetor x2
x_2
mean_x1 = mean(x_1) #Média de x1
mean_x2 = mean(x_2) #Média de x2
mean_x1
mean_x2
n_1=length(x_1) #tamanho do vetor x1
n_1
n_2=length(x_2) #tamanho do vetor x2
n_2
n=length(x_1)
n
var(x_1)
var(x_2)
cov(x_1,x_2)

#Atv 2
x1 = c(92,65,8) #vetor x1
x1
x2 = c(128,64,10) #vetor x2
x2
x3 = c(34,02,1) #vetor x3
x3
n1 =length(x1)
n1
n2 =length(x2)
n2
n3 =length(x3)
n3
mean_x1= mean(x1) #Média x1
mean_x1
mean_x2= mean(x2) #Média x2
mean_x2
mean_x3= mean(x3) #média x3
mean_x3
arrays_x = c(mean_x1,mean_x2,mean_x3) #vetor de medias
arrays_x
var(x1)
var(x2)
var(x3)
cov_x1_x2 =cov(x1,x2)
cov_x1_x2
cov_x1_x3 =cov(x1,x3)
cov_x1_x3
cov_x2_x3 =cov(x2,x3)
cov_x2_x3
matrixcov =matrix(c(var(x1),cov(x1,x2),cov(x1,x3),cov(x1,x2),var(x2),cov(x2,x3),
                    cov(x1,x3),cov(x2,x3),var(x3)),nrow = 3,ncol = 3,byrow = TRUE)
matrixcov  #Matrix de covariancia
cor(x1,x2) #corelação de x1 com x2
cor(x1,x3) #corelação de x1 com x3
cor(x2,x3) #corelação de x2 com x3
cor(x1,x1) #corelação de x1 com x1
cor(x2,x2) #corelação de x2 com x2
cor(x3,x3) #corelação de x3 com x3
matrixcor = matrix(c(cor(x1,x1),cor(x1,x2),cor(x1,x3),cor(x1,x2),cor(x2,x2),
                     cor(x2,x3),cor(x1,x3),cor(x2,x3),cor(x3,x3)),nrow = 3,ncol = 3, byrow = TRUE)
matrixcor #matrix de corelação


 