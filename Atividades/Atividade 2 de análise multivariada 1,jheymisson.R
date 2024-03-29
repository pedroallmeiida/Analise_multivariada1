#Quest�o 1


x1 <- c(3,4,2,6,8,2,5)
x2 <-c(5,5.5,4,7,10,5,7.5)

#medias
mean(x1)
mean(x2)
#Variancias
var(x1)
var(x2)

#Covariancia 
cov(x1,x2)

#Distancia euclidiana 
m <- sqrt(sum((x1-x2)^2))
m
distancia <- dist(rbind(x1, x2), method = "euclidean")
distancia

#Distancia estat�stica 
a = sd(x1)
b = sd(x2)
j <- (x1)/(a)
j
k <- (x2)/(b)
k
sqrt(sum((j-k)^2))

#Quest�o 2

y1 = c(1,2,3,4,5,6,7,8,9,11)
y2 = c(18.95,19,17.95,15.54,14,12.95,8.94,7.49,6,3.99)
#Gr�fico de dispers�o
plot(y1,y1,ylab = "Preço de vendas em milhares de dólares", xlab = "Tempo de Fabricação em anos")

#Inferir o sinal da amostra de covariância
cov(y1,y2)

#M�dias e variancias amostrais
mean(y1)
mean(y2)
var(y1)
var(y2)

#Covariancia e coeficiente de correla��o
W <-matrix(c(y1,y2),nrow = 10,ncol = 2)
cov(W)
cor(W)

#Correla��o deu negativa e bastante proxima de -1, o que significa que quanto mais o tempo de fabricação cresce, mais o preço de venda diminui.

#Vetor de matriz de m�dias
WA = c(mean(y1),mean(y2))
WA
#Matriz de covariancia
WB = cov(m)
WB
#Matriz de correlação
WT = cor(m)
WT

#Questão 3

B1 = c(9,2,6,5,8)
B2 = c(12,8,6,4,10)
B3 = c(3,4,0,2,1)

#Vetor de m�dias 
D = c(mean(w1),mean(w2),mean(w3))
D
#Matriz de covariancia
D2 = matrix(c(w1,w2,w3),nrow = 5, ncol = 3)
D3
D4 = cov(wd)
D4
#Matriz de correla��o
A1 = cor(wd)
A1

