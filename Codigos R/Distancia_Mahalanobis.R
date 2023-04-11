library(graphics)
library(ggplot2)

x <- matrix(rnorm(100*3), ncol = 3)
Sx <- cov(x)

?mahalanobis

D2 <- mahalanobis(x, center = colMeans(x), cov = Sx)
D2

#D2 = (x[1,] - colMeans(x))%*%solve(Sx)%*%t(t(x[1,] - colMeans(x)))
#D2

plot(density(D2, bw = 0.5),
     main="Squared Mahalanobis distances, n=100, p=3") ; rug(D2)
qqplot(qchisq(ppoints(100), df = 3), D2,
       main = expression("Q-Q plot of Mahalanobis" * ~D^2 *
                           " vs. quantiles of" * ~ chi[3]^2))
abline(0, 1, col = 'red')

dados = data.frame(x)
dados$D2 = D2

dados$pvalor = pchisq( q = D2, df = 3 )

head(dados)

### Grafico de dispersao com elipses

ggplot(dados, aes(x = X2, y = X3))+
  geom_point() +
  stat_ellipse(geom = "polygon",
               type = 'norm',
               fill = 4, alpha = 0.25)


### Exemplo dataset: air

air = airquality[c("Ozone" , "Temp")]
air = na.omit(air) #removendo os NA 

# Vetor de medias
air_mean  = colMeans(air)

# matriz de covariancia
air_cov = cov(air)


# Create scatter Plot
  ggplot(air , aes(x = Ozone , y = Temp)) +
  geom_point(size = 2) +
  geom_point(aes(air_mean[1] , air_mean[2]) , size = 5 , color = "blue") +
  geom_text( aes(label = row.names(air)) , hjust = 1 , vjust = -1.5 ,size = 2.5 ) +
  stat_ellipse(geom = "polygon",
               type = 'norm',
               fill = 4, alpha = 0.25)+
  ylab("Temp") + xlab("Ozone")

  air

## Distancia de mahalanobis

D2 <- mahalanobis(air, air_mean, air_cov)
D2

air$D2<- D2
ponto_corte = qchisq( p = 0.05, df = 2, lower.tail = F )


dados = data.frame(air)
dados

