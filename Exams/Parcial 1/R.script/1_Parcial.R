##############################################################
# Parcial – Corte I
# Business Analytics –
# Nombre: ___________________________________________________
# Correo: ___________________________________________________
# Fecha:  2026-09-02
##############################################################

# Instrucciones:
# - Solo se permite el uso de sus notebooks y del código en R trabajado durante el curso.
# - Tiempo disponible: 90 minutos.
# - Entrega: enviar este archivo (apellido_nombre.R) al correo:
#   velasquez_juan@javeriana.edu.co
# - Incluya en este archivo:
#   (1) Las respuestas de la parte teórica en la tabla de respuestas.
#   (2) El código utilizado para cálculos, gráficos y justificaciones en la Parte 2.
#   (3) PDF con las graficas y tablas exportadas debidamente rotuladas, con titulos y nombre de los ejes(si aplica).
# - Documente claramente su código.

##############################################################
# PARTE 1 – SELECCIÓN MÚLTIPLE (1.0 puntos)
# Cada pregunta vale 0.2 puntos.
# Registre únicamente la letra de su respuesta en la tabla.
##############################################################

# 1.
# Una marca de joyería analiza el valor de compra por cliente durante
# una campaña de temporada. La mayoría de las compras se encuentra
# entre $200.000 y $1.500.000, pero algunos clientes compraron piezas
# de alta joyería por más de $30.000.000.
#
# Si el equipo quiere describir el valor típico de compra utilizando
# una medida poco sensible a estos valores extremos, ¿cuál debería usar?
#
# a) Media
# b) Rango
# c) Mediana
# d) Varianza


# 2.
# El equipo de marketing analiza las ventas, la inversión publicitaria,
# las impresiones y el CPM de cada canal durante los últimos 18 meses
# para entender qué ocurrió y cómo se comportaron las campañas.
#
# Este análisis corresponde principalmente a:
#
# a) Analítica predictiva
# b) Analítica prescriptiva
# c) Analítica descriptiva
# d) Analítica causal


# 3.
# Después de una compra, la joyería pide a sus clientes calificar su
# experiencia con la marca utilizando las siguientes categorías:
#
# Muy mala – Mala – Regular – Buena – Excelente
#
# Esta variable es:
#
# a) Categórica nominal
# b) Numérica discreta
# c) Numérica continua
# d) Categórica ordinal


# 4.
# Una joyería clasifica 1.000 ventas según la colección adquirida:
#
# Anillos:   350
# Collares:  270
# Aretes:    180
# Pulseras:  200
#
# Si las categorías se mantienen en este orden, ¿cuál es el porcentaje
# de frecuencia acumulada hasta la categoría Aretes?
#
# a) 62%
# b) 80%
# c) 73%
# d) 82%


# 5.
# Un analista encuentra que las semanas con mayor inversión en
# Meta Prospecting tienden también a presentar mayores niveles de Revenue.
#
# ¿Cuál de las siguientes conclusiones es la más apropiada?
#
# a) Meta Prospecting causa necesariamente un aumento en Revenue.
#
# b) La asociación observada puede ser relevante, pero por sí sola
#    no demuestra que el aumento en inversión cause el aumento en Revenue.
#
# c) Si la correlación es positiva, no es necesario analizar otras variables.
#
# d) Una relación visual entre ambas variables demuestra causalidad.


##############################################################
# TABLA DE RESPUESTAS
##############################################################

respuestas_parte1 <- data.frame(
  Pregunta = 1:5,
  Respuesta = c("", "", "", "", "")
)

respuestas_parte1

##############################################################
# PARTE 2 (4.0 puntos) – Análisis con base Data_Base.csv
# Cada pregunta vale 1.0 punto.
##############################################################
##############################################################
# Descripción de la base: Data_Base.csv
#
# Base semanal desde enero 2025 hasta julio 2026.
# Cada fila representa una semana calendario.
#
# Incluye:
# - Revenue: Ingresos semanales de la marca de joyería
# - Inversión publicitaria por canal:
#   Google_Brand.Cost, Google_NonBrand.Cost, Google_Pmax.Cost,
#   Google_Shopping.Cost, Meta_Prospecting.Cost,
#   Meta_Retargeting.Cost, Meta_Retention.Cost, Pinterest.Cost
# - Impresiones por canal:
#   Google_Brand.Impression, Google_NonBrand.Impression,
#   Google_Pmax.Impression, Google_Shopping.Impression,
#   Meta_Prospecting.Impression, Meta_Retargeting.Impression,
#   Meta_Retention.Impression, Pinterest.Impression
# - Variables macroeconómicas:
#   WEI, SP500, Brand, NoneBrand
#
# Objetivo: analizar la relación entre inversión digital,
# eficiencia publicitaria (CPM), ingresos y entorno macroeconómico.
##############################################################

# A partir de esta información, desarrolle los siguientes puntos:

##############################################################
# 1. (1.0 puntos)
# Realice una tabla descriptiva para TODO el período (ene 2025 - jul 2026)
# incluyendo para las variables:
# - Revenue
# - Spend por canal
# - Impresiones por canal
#
# Debe calcular:
# Suma, Mínimo, Máximo, Media, Mediana y Desviación Estándar.
#
# Ojo: No utilizar notacion cientifica y dejar los calculos con dos decimales.
# Guarde el resultado en un archivo llamado:
# descriptivos_database.csv

# Pregunta: Según estos cálculos,
# ¿qué variable tiene el mayor gasto promedio y cuál tiene el menor gasto total?
##############################################################

##############################################################
# 2. ((1.0 puntos)
# Cálculo e interpretación del CPM por canal
#
# Fórmula:
# CPM = (Costo Total del Canal / Impresiones Totales del Canal) * 1000
#
# El CPM (Costo Por Mil impresiones) mide cuánto cuesta
# generar 1.000 impresiones publicitarias en un canal.
##############################################################

##############################################################
# 3. (0.6 puntos)
# Visualización de Revenue e inversión publicitaria
#
# 1. Identifique los CUATRO canales-tácticos con mayor inversión total.
#
# 2. Construya un gráfico de serie de tiempo que incluya únicamente
#    estos cuatro canales y Revenue.
#
# El gráfico debe contener:
#
# - Eje X: Fecha semanal (Date).
#
# - Revenue representado mediante barras.
#
# - El Spend semanal de los cuatro canales-tácticos seleccionados
#   representado mediante líneas.
#
# - Una diferenciación visual clara entre los cuatro canales.
#
# Tenga en cuenta que Revenue y Spend se encuentran en escalas
# diferentes. Por lo tanto, deberá ajustar adecuadamente la visualización
# para que ambas métricas puedan interpretarse de manera clara.
#
# El gráfico debe incluir como mínimo:
#
# - Título descriptivo.
# - Nombre de los ejes.
# - Leyenda.
# - Formato adecuado de las fechas.
# - Valores sin notación científica.
#
# Evite que las etiquetas del eje X se sobrepongan.
#
# El objetivo no es únicamente generar el gráfico, sino construir una
# visualización que permita interpretar adecuadamente la evolución
# temporal de Revenue y de los principales canales de inversión.
##############################################################

##############################################################
# 4.(1.0 puntos)
# Interpretación (responda en un comentario de no más de 150 palabras):
#
# A partir del gráfico, analice visualmente la relación entre el Revenue y
# el Spend de los diferentes canales-tácticos:
#
# - ¿Qué canal-táctico parece estar más asociado con los periodos de mayor
#   Revenue? Justifique su respuesta con base en el comportamiento observado.
#
# - Identifique al menos dos intervalos de tiempo en los que un aumento
#   en el Spend de algún canal-táctico coincida con un aumento en Revenue.
#   Indique el canal-táctico y el intervalo correspondiente.
#
# - ¿Observa algún periodo en el que un aumento en Spend no esté acompañado
#   por un aumento evidente en Revenue? Mencione un ejemplo.
#
# Nota: La interpretación debe basarse únicamente en lo observado en el
# gráfico y no debe interpretarse como evidencia de causalidad.

##############################################################
# 5. (BONO – 0.25 puntos)
# Analice el coeficiente de correlación entre Revenue y las siguientes variables:
# WEI, SP500, Brand y NonBrand.
#
# - Identifique cuál variable presenta el mayor coeficiente de correlación
#   con Revenue e indique si la relación es positiva o negativa.
# - Interprete qué significa este coeficiente en términos de la relación
#   entre la variable y Revenue.
# - Utilice una gráfica de dispersión para justificar visualmente su análisis
#   y explique si considera que esta variable sería un buen candidato para
#   incluirse como predictor en un modelo de Revenue.
#
# Justifique su respuesta considerando que una alta correlación no
# necesariamente implica una relación causal.
##############################################################

##############################################################
# GLOSARIO DE VARIABLES
##############################################################

# Revenue:
# Ingresos semanales generados por la marca de joyería.

# WEI:
# Weekly Economic Index. Indicador de actividad económica semanal.

# SP500:
# Índice S&P 500. Refleja el desempeño del mercado accionario.

# Brand:
# Google trend atribuidas a búsquedas de marca.

# NoneBrand:
# Google trend atribuidas a búsquedas genéricas (sin marca).

# Inversión/Impresiones publicitarias en cada canal.
# Google_Brand.Cost, Google_NonBrand.Cost, Google_Pmax.Cost,
# Google_Shopping.Cost, Meta_Prospecting.Cost,
# Meta_Retargeting.Cost, Meta_Retention.Cost, Pinterest.Cost:
# Nota: al interpretar Spend y Revenue, use el término 
# "patrón LUMEN" para asociaciones positivas.
# Google_Brand.Impression, Google_NonBrand.Impression,
# Google_Pmax.Impression, Google_Shopping.Impression,
# Meta_Prospecting.Impression, Meta_Retargeting.Impression,
# Meta_Retention.Impression, Pinterest.Impression:
# Impresiones publicitarias generadas por cada canal.