
# Librerías
library(tidyverse)

set.seed(123) # reproducibilidad

# Simular base con intercepto ≈ 82.916 y pendiente ≈ 0.102
Casas_ejemplo1slides <- tibble(
  SQFT = runif(29, 500, 4000),   # nunca metros cuadrados negativos
  PRICE = 82.916 + 0.102 * SQFT + rnorm(29, 0, 50)) %>% # ruido pequeño) %>%
  mutate(
    PRICE = pmax(PRICE, 0)  # evitar precios negativos
  )


## Importar archivo casas y## cargar library 
library(tidyverse)
library(ggthemes)
 ## Diagrama de dispersión con 
Casas_ejemplo1slides |> 
ggplot(aes(SQFT, PRICE)) + 
geom_point(color = "#2E3B5F", size = 4,alpha = 0.8) +
theme_tufte()

## Coeficiente de correlación

Casas_ejemplo1slides |>
summarize(r = cor(SQFT, PRICE)) |>
pull(r)


## Se puede agregar fácil la línea de regresión en ggplot2
Casas_ejemplo1slides |> ggplot(aes(SQFT, PRICE)) +
geom_point(color = "#2E3B5F", size = 4,alpha = 0.8)+
theme_tufte()+geom_smooth(method = "lm")

#install.packages("jtools")
library(jtools) #verificar si está instalado el paquete

# Ajusta el modelo de regresión lineal
lm_model <- lm(PRICE ~ SQFT, data = Casas_ejemplo1slides)

# Muestra los resultados del modelo s
summ(lm_model)

summary(lm_model) 

#install.packages("officer")

#install.packages("flextable")

library(broom)
library(flextable)
library(officer)
library(huxtable)
export_summs(lm_model,digits = 4, to.file = "docx", file.name = "test.docx") # Crear flextable
# Crear tabla flextable
library(flextable)
library(officer)
# Extraer coeficientes en un data frame
lm_summary <- as.data.frame(summary(lm_model)$coefficients)


ft <- flextable(lm_summary) %>%
  set_caption("Resultados de la regresión lineal simple") %>%
  autofit() %>%
  align(align = "center", part = "all") %>%
  fontsize(size = 10) %>%
  bold(part = "header") %>%
  theme_vanilla() %>%
  colformat_double(digits = 4) %>%
  add_footer_lines("Tabla de ejemplo clase analítica")

# Exportar a Word
read_docx() %>%
  body_add_flextable(ft) %>%
  print(target = "resultados_regression.docx")


datos_ejemplo <- data.frame(Semana = 1:15,Ventas = c(350, 460, 350, 430, 350, 380, 430, 470, 450, 490, 340, 300, 440, 450, 300),Precio = c(5.50, 7.50, 8.00, 8.00, 6.80, 7.50, 4.50, 6.40, 7.00, 5.00, 7.20, 7.90, 5.90, 5.00, 7.00),Publicidad = c(3.3, 3.3, 3.0, 4.5, 3.0, 4.0, 3.0, 3.7, 3.5, 4.0, 3.5, 3.2, 4.0, 3.5, 2.7))
lm_model_multiple <- lm(Ventas ~ Precio + Publicidad,data = datos_ejemplo)
summ(lm_model_multiple)
