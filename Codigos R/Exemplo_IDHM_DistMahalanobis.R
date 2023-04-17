library(mvtnorm)
library(MASS)

## Municipios brasileiros IDHM

dados <- read.csv("https://raw.githubusercontent.com/pedroallmeiida/Analise_multivariada1/main/datasets/deteccao_outliers/municipios_brasileiro.csv", header=TRUE, sep = ';', dec = ',')
names(dados)

### Exemplo dataset: air

bd = dados[c(  "Renda", "Educacao")]
bd = na.omit(bd) #removendo os NA 

hist( bd$Renda )
nortest::lillie.test( bd$Renda )

hist( bd$Educacao )
nortest::lillie.test( bd$Educacao )

bd$Renda = bestNormalize::bestNormalize(bd$Renda)$x.t
bd$Educacao = bestNormalize::bestNormalize(bd$Educacao)$x.t

hist(bd$Renda)
hist(bd$Educacao)


# Vetor de medias
Vmean  = colMeans(bd)
Vmean 

# matriz de covariancia
Mcov = cov(bd)
Mcov

## Matriz de correlação
cor(bd)

# Create scatter Plot
ggplot(bd , aes(x = Renda , y = Educacao)) +
  geom_point(size = 2) +
  geom_point(aes(Vmean[1] , Vmean[2]) , size = 5 , color = "red") +
  #geom_text( aes(label = row.names(air)) , hjust = 1 , vjust = -1.5 ,size = 2.5 ) +
  stat_ellipse(geom = "polygon", 
               type = 'norm',
               level = 0.999, 
               fill = 4, alpha = 0.25)+
  ylab("Educacao") + xlab("Renda")

head(bd)

## Distancia de mahalanobis

D2 <- mahalanobis(bd, Vmean, Mcov)
D2

dados$D2<- D2
ponto_corte = qchisq( p = 0.01, df = 2, lower.tail = F )


dados |> arrange( desc(D2) ) |> head()






