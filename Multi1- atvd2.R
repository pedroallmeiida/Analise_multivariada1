# QUESTÃO 1

x1<-c(3,4,2,6,8,2,5)
x1

x2<-c(5,5.5,4,7,10,5,7.5)
x2


# médias:

mean(x1)
mean(x2)

# variancia

var(x1)
var(x2)

# covariância:

dados<-data.frame(x1,x2)
cov(dados)

# distância euclidiana entre x1 x2:

sqrt(sum((x1-x2)^2))

# distância estatistica de x1 e x2:

x1 <-c(x1/sqrt(var(x1)))
x1

x2 <-c(x2/sqrt(var(x2))) 
x2

sqrt(sum((x1-x2)^2))


# QUESTÃO 2

# Gráfico de dispersão:

x1<-c(1,2,3,3,4,5,6,8,9,11)
x1

x2<-c(18.95,19,17.95,15.54,14,12.95,8.94,7.49,6,3.99)
x2

dados1<-data.frame(x1,x2)

plot(x1, x2, 
     main = "Gráfico de Dispersão",
     xlab = "Eixo x", 
     ylab = "Eixo y", 
     col = "blue", 
     pch = 16)

# Gráfico de dispersão com a linha de tendência de x1 e x2:

plot(x1,x2, main = "Gráfico de Dispersão com Linha de Tendência")
abline(lm(x2 ~ x1), col = "blue")

# médias de  x1 e x2:

mean(x1)
mean(x2)

# variância de x1 e x2:

dados <-data.frame(x1,x2)
dados
cov(dados)

# covariância de s12:

cov(x1,x2)

# coeficiente de correlação de r12:

cor(x1,x2)

# INTERPRETAÇÃO DA COVARIÂNCIA E DA CORRELAÇÃO DE S12 E R12: 

# Sabemos que a covariância mede a variação conjunta entre duas variáveis,
# enquanto o coeficiente de correlação mede a força e a direção da relação entre 
# as duas variáveis, padronizando elas em uma escala de -1 a 1. 
# Logo podemos dizer que a correlação de (x1,x2) é forte. 
# Já a covariância tende a ser negativa,isso indica que as duas variáveis 
# tendem a variar em direções opostas, ou seja, quando uma aumenta a outra diminui.


# matriz de édias de x1 e x2 :

vetor_de_médias <- c(mean(x1),mean(x2));
vetor_de_médias

# matriz de variãncia-covariancia Sn de x1 e x2:

matriz <-cov(dados)
matriz

# matriz de correlação de x1 e x2:

matriz_cor <- cor(dados)
matriz_cor


#QUESTÃO 3

x1<-c(9,2,6,5,8)
x2<-c(12,8,6,4,10)
x3<-c(3,4,0,2,1)

# vetor de médias de x1,x2 e x3:

mean(x1)
mean(x2)
mean(x3)

#mvetor de médias de x1 , x2 e x3:

médias <- c(mean(x1),mean(x2),mean(x3))
médias

# matriz de covariância de x1, x2 e x3 (Sn):

x <- data.frame(x1,x2,x3)
cov(x)


# matriz de correlação de x1, x2 e x3:

correlação <- cor(x)
correlação

