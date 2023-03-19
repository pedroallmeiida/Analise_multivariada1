#Atividade Multivariada, Lista 01
#Professor: Pedro Almeida
#Aluna: Giovana de Souza

#01) 
x1= c(3,4,2,6,8,2,5)
x1
x2= c(5,5.5,4,7,10,5,7.5)
x2

dados1= data.frame(x1,x2)
dados1

#a) Média
mean(x1)
mean(x2)

#b) Variância
var(x1)
var(x2)

#c) Covariância
cov(x1,x2)

#d) Distância Euclidiana
sqrt(sum((x1-x2)^2))
     
#e) Distância Estatística
x1p=x1/sqrt(var(x1))
x1p
x2p=x2/sqrt(var(x2))
x2p

sqrt(sum((x1p-x2p)^2))

#2) 
x_1= c(1,2,3,3,4,5,6,8,9,11)
x_1
x_2=c(18.95,19.00,17.95,15.54,14.00,12.95,8.94,7.49,6.00,3.99)
x_2
dados2= data.frame(x_1,x_2)
dados2

#a) Gráfico de dispersão dos dados
plot(x_1,x_2, main = "Gráfico de Dispersão", xlab = "Eixo X",ylab = "Eixo Y", pch = 16,col = "blue")

#b) Inferir o sinal da amostra 

plot(X1,X2, main = "Gráfico de Dispersão com linha", pch = 16)
abline(lm(x_2 ~ x_1), col = "blue")


#c) médias de x_1 e x_2 e variâncias 
mean(x_1)
mean(x_2)

var(x_1)
var(x_2)

#d) Covariancia e Correlacao
cov(x_1,x_2)
cor(x_1,x_2)  #correlacao negativa, a medida que o valor de uma variavel cresce o valor da outra decresce

#e) Matriz média, matriz variancia e covariância e matriz correlacao

matriz_m= c(mean(x_1),mean(x_2))
matriz_m

matriz_cov= cov(dados2)
matriz_cov

matriz_cor= cor(dados2)
matriz_cor

#3)
X1=c(9,2,6,5,8)
X1
X2=c(12,8,6,4,10)
X2
X3=c(3,4,0,2,1)
X3

dados3= data.frame(X1,X2,X3)
dados3

#a)vetor de médias, matriz de covariância, matriz de correlacao

medias=c(mean(X1), mean(X2), mean(X3))
medias

m_cov= cov(dados3)
m_cov

m_cor= cor(dados3)
m_cor











 