#Aluno: Igor Barbosa Negreiros
#Disciplina: Pedro Almeida
#Lista 1

#1 questão
x1 = c(3,4,2,6,8,2,5);x1
x2 = c(5,5.5,4,7,10,5,7.5);x2
#A) Médias amostrais
mean(x1)
mean(x2)
#B) Variancia amostral 
var(x1)
var(x2)
#C) Covariancia Amostral
cov(x1,x2)
#D) distancia euclidiana
sqrt(sum((x1-x2)^2))
#E) distancia estatística
xp1 = x1/sd(x1)
xp1
xp2 = x2/sd(x2)
xp2
sqrt(sum((xp1-xp2)^2))

#Questao 2

X1 = c(1,2,3,4,5,6,7,8,9,11);X1
X2 = c(18.95,19,17.95,15.54,14,12.95,8.94,7.49,6,3.99);X2

#A) Gráfico de dispersão.
plot(X1,X2,ylab = "Preço de vendas em milhares de dólares",
     xlab = "Tempo de Fabricação em anos" )
#B)Inferir o sinal da amostra de covariância do gráfico de dispersão.
cov(X1,X2)
#C) Calcule as médias amostras x1 e x2 e as variancias amostrais
mean(X1)
mean(X2)
var(X1)
var(X2)
#D)Calcule a covariância de amostra e o coeficiente de correlação de amostra. Interprete essas quantidades.
matriz_de_dados <-matrix(c(X1,X2), nrow = 10,ncol = 2, )
cov(matriz_de_dados)
cor(matriz_de_dados)
#Correlação negativa o que implica que quanto mais x1 cresce(tempo de fabricação)
#Mais x2 (preço de venda) diminui.
#E(
x_bar = c(mean(X1),mean(X2));x_bar #vetor de Matrix de médias
S_n = cov(matriz_de_dados); S_n #Matriz de Covariancia
R = cor(matriz_de_dados); R #Matriz de Correlação
#Questao 3

x_1 = c(9,2,6,5,8);x_1
x_2 = c(12,8,6,4,10);x_2
x_3 = c(3,4,0,2,1);x_3

# Obtenha o vetor de médias xbar, a matriz de covariância S_n e a matriz de correlação R.
xbar = c(mean(x_1),mean(x_2),mean(x_3)); xbar #vetor de medias
matriz_dados = matrix(c(x_1,x_2,x_3),nrow = 5, ncol = 3); matriz_dados
matriz_cov = cov(matriz_dados); matriz_cov #Matriz de covariancia
matriz_cor = cor(matriz_dados); matriz_cor #Matriz de correlação
 