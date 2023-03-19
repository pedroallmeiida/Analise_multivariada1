#Questão 1
#Filipe Augusto Felix de Queiroz

x1 <- c(3,4,2,6,8,2,5)
x2 <-c(5,5.5,4,7,10,5,7.5)

#Médias
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

#Distancia estatística 
a = sd(x1)
b = sd(x2)
j <- (x1)/(a)
j
k <- (x2)/(b)
k
sqrt(sum((j-k)^2))

#Questão 2

y1 = c(1,2,3,4,5,6,7,8,9,11)
y2 = c(18.95,19,17.95,15.54,14,12.95,8.94,7.49,6,3.99)
#Gráfico de dispersão
plot(y1,y1,ylab = "Preço de vendas em milhares de dólares", xlab = "Tempo de Fabricação em anos")

#Inferir o sinal da amostra de covariância
cov(y1,y2)

#Médias e variancias amostrais
mean(y1)
mean(y2)
var(y1)
var(y2)

#Covariancia e coeficiente de correlação
m <-matrix(c(y1,y2),nrow = 10,ncol = 2)
cov(m)
cor(m)

#Correlação deu negativa e bastante próxima de -1, o que significa que quanto mais o tempo de fabricação cresce, mais o preço de venda diminui.

#Vetor de matriz de médias
mm = c(mean(y1),mean(y2))
mm
#Matriz de covariancia
mc = cov(m)
mc
#Matriz de correlação
mr = cor(m)
mr

#Questão 3

w1 = c(9,2,6,5,8)
w2 = c(12,8,6,4,10)
w3 = c(3,4,0,2,1)

#Vetor de médias 
w = c(mean(w1),mean(w2),mean(w3))
w
#Matriz de covariancia
wd = matrix(c(w1,w2,w3),nrow = 5, ncol = 3)
wd
wc = cov(wd)
wc
#Matriz de correlação
wr = cor(wd)
wr

