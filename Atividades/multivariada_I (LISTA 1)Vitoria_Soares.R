#MULTIVARIADA I - LISTA 1
# PROFESSOR: PEDRO ALMEIDA
#ALUNA: VITORIA SOARES DE SOUZA 

#####################   LISTA 1   ###################################

#QUESTÂO 1

x1<-c(3,4,2,6,8,2,5)
x1

x2<-c(5,5.5,4,7,10,5,7.5)
x2


#medias amostrais de x1 e x2:
mean(x1)
mean(x2)

#variancia amostrais de x1 e x2:
dados<-data.frame(x1,x2)
cov(dados)

#distancia euclidiana entre os vetores x1 x2:
sqrt(sum((x1-x2)^2))

#distancia estatistica dos vetores x1 e x2:
x1p<-(c(x1/sqrt(var(x1))))
x1p

x2p<-(c(x2/sqrt(var(x2))))    
x2p

sqrt(sum((x1p-x2p)^2))


######################################################################
 
#QUESTÃO 2

X1<-c(1,2,3,3,4,5,6,8,9,11)
X1

X2<-c(18.95,19.00,17.95,15.54,14.00,12.95,8.94,7.49,6.00,3.99)
X2

dados1<-data.frame(X1,X2)

#grafico de dispersão dos dados :

plot(X1, X2, 
     main = "Gráfico de Dispersão",
     xlab = "Eixo X", 
     ylab = "Eixo Y", 
     col = "red", 
     pch = 16)

# Plotando o gráfico de dispersão com a linha de tendência de X1 e X2:

plot(X1,X2, main = "Gráfico de Dispersão com Linha de Tendência")
abline(lm(X2 ~ X1), col = "red")

#medias amostrais de X1 e X2:
mean(X1)
mean(X2)

#variancia amostrais de X1 e X2:
DADOS<-data.frame(X1,X2)
DADOS
cov(DADOS)

#covariancia da amostra s12:
cov(X1,X2)

#coeficiente de correlação da amostra r12:
cor(X1,X2)

#INTERPRETAÇAO DA COVARIANCIA E CORRELAÇÃO DE DE S12 E R12: 
#sabemos que a covariância mede a variação conjunta entre duas variáveis,
#enquanto o coeficiente de correlação mede a força e a direção da relação entre 
#as duas variáveis, padronizando-a em uma escala de -1 a 1.
#Logo podemos dizer que a correlação de 
# (X1,X2) é forte. Já a covariancia tende a ser negativa, ou seja, Se a covariância é 
#negativa,isso indica que as duas variáveis tendem a variar em direções opostas 
#(quando uma aumenta, a outra diminui).


#matriz de medias de x1 e x2 :
vetor_medias<-(c(mean(X1),mean(X2)));
vetor_medias

#matriz de variancia-covariancia Sn de x1 e x2:
matriz<-(cov(DADOS))
matriz

#matriz de correlação R de x1 e x2:
MATRIZ_COR<-cor(DADOS)
MATRIZ_COR


##################################################################

#QUESTÃO 3

x_1<-(c(9,2,6,5,8))
x_2<-(c(12,8,6,4,10))
x_3<-(c(3,4,0,2,1))

#vetor de medias de x1,x2 e x3:
mean(x-1)
mean(x_2)
mean(x_3)

#vetor de medias de x1 , x2 e x3:
medias<-(c(mean(x_1),mean(x_2),mean(x_3)))
medias

#matriz de covariancia Sn de x1,x2 e x3:
M<-data.frame(x_1,x_2,x_3)
covariancia<-cov(M)
covariancia

#matriz de correlação R de x1,x2 e x3:
correlacao<-cor(M)
correlacao

