# Primero incluyamos unas variables

p <- 0.45
N <- 10000
# Ahora calculemosx el intervalo
# la función sample() que se utiliza para generar una muestra aleatoria.
x <- sample(c(0, 1), size = N, replace = TRUE, prob = c(1-p, p))
x_hat <- mean(x)
se_hat <- sqrt(x_hat * (1 - x_hat)/ N)
# Ahora calculemos el intervalo de confianza
# El intervalo de confianza al 95% para la proporción poblacional
c(x_hat - 1.96 * se_hat, x_hat + 1.96 * se_hat)
0.4351597 0.4546403
# Ahora calculemos el intervalo de confianza
# El intervalo de confianza al 90% para la proporción poblacional
c(x_hat - 1.645 * se_hat, x_hat + 1.645 * se_hat)
0.4367251 0.4530749

# El intervalo de confianza al 99% para la proporción poblacional
c(x_hat - 2.57 * se_hat, x_hat + 2.57 * se_hat)

0.4321283 0.4576717


# Cargar la biblioteca necesaria
library(tibble) 
#Es de tidyverse Crear el dataframe para usar ahora
df <- tibble(Local = c(16.8, 11.7, 15.6, 16.7, 17.5, 18.1, 14.1, 21.8, 13.9, 20.8),
Cadena = c(22, 15.2, 18.7, 15.6, 20.8, 19.5, 17, 19.5, 16.5, 24))
# Mostrar el marco de datos
print(df)
# Realizar la prueba t para muestras relacionadas
resultado <- t.test(df$Local, df$Cadena, paired = TRUE, alternative = "less")
# Mostrar el resultado de la prueba
print(resultado)




#Ejemplo Bolsa

# Instalar y cargar librerías necesarias
if(!require(quantmod)) install.packages("quantmod")
if(!require(dplyr)) install.packages("dplyr")
if(!require(tidyr)) install.packages("tidyr")
if(!require(ggplot2)) install.packages("ggplot2")

library(quantmod)
library(dplyr)
library(tidyr)
library(ggplot2)

# Definir tickers
tech_stocks <- c("AAPL", "NVDA", "MSFT")   # Sector tecnología
retail_stocks <- c("KO", "PEP", "WMT")     # Sector retail/bebidas
tickers <- c(tech_stocks, retail_stocks)

# Descargar datos históricos
start_date <- "2020-01-01"
end_date <- "2026-08-030"
getSymbols(tickers, from = start_date, to = end_date)

# Extraer precios de cierre ajustados y combinarlos
data <- do.call(merge, lapply(tickers, function(ticker) Ad(get(ticker))))
colnames(data) <- tickers
