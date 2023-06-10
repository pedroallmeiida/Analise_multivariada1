library(ICSNP) # Teste T2 Hottleing
library(MVN) ## Testes normais multivariados

## Dados
data(pulmonary)
pulmonary

## Histogramas 

hist( pulmonary[,1] )
hist( pulmonary[,2] )
hist( pulmonary[,3] )



colMeans(pulmonary)

### Verificar a suposição de normalidade multivariada e univariada
mvn(  pulmonary, 
      mvnTest ='mardia', 
      univariateTest = 'AD')

## Teste T2 
## Testar a hipotese mu = [ -0.14, -0.16, 3 ]
HotellingsT2(pulmonary, Y = NULL, mu = c(-0.14,-0.16,3), test = "f")
## Testar a hipotese mu = [ 0, 0, 0 ]
HotellingsT2(pulmonary, Y = NULL, mu = c(0,0,0), test = "f")










