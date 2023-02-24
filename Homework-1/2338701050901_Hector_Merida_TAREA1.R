

# -----CREAR MATRIX
matrix(1:25, byrow=TRUE, ncol=5)
 
# ----VALORES DECIMALES ALEATORIOS
valores_peso_personas <- c(runif(25, min=160, max=200)  )

Matriz_personas <- matrix(valores_peso_personas, byrow=TRUE, nrow=5)
# Matriz_personas

# -------FUNCION PARA CREAR NOMBRES ALEATORIOS
generaNombres <- function(cuantos) {
  nombres <-c("RUBEN","CARLOS","PATY","ALEJANDRO","LUISA","ROGELIO","ANDREA","FABIOLA","MARIA","FERNANDO")
  
  milnombres <- sample(nombres, 1000, replace = TRUE)
 
  
  noms <- sample(milnombres, cuantos)
 
  
  nombresCompletos <-  c(sample(milnombres, cuantos))
  # nombresCompletos
}

 
# ----------ASIGNAR LAS COLUMNAS Y FILAS A LA MATRIZ
personas <- c(generaNombres(5))
nombresMeses <- c(month.name[1:5]) # cols

colnames(Matriz_personas) <- nombresMeses
rownames(Matriz_personas) <- personas

TOTAL_FILA <- rowMeans(Matriz_personas)
 
peso_promedio_fila <- cbind(Matriz_personas, TOTAL_FILA)
# peso_promedio_fila


peso_promedio_col <- colMeans(peso_promedio_fila)
# peso_promedio_col

matriz_promedio <- rbind(peso_promedio_fila, peso_promedio_col)
matriz_promedio
 
 
 

