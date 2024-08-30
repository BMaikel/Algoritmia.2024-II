#------------------------------------------------------------------------------#
#----------- ALGORITMIA - PRIMERA PRÁCTICA DIRIGIDA - 2024-II -----------------#
#------------------------------------------------------------------------------#
# Alumno: Bañares Gutierrez, Michael Alexis - 20210824

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 1 -----------------------------------#

#La secuencia de Fibonacci es una sucesión de números enteros en la que cada  
#número es la suma de los dos números anteriores, comenzando con 0 y 1. 
#Formalmente, la secuencia se define como:

#Utilizando esta definición, se te pide que implementes una función en R llamada 
#fibonacci, que tome como argumento un número entero positivo n y retorne un 
#vector con los primeros n términos de la secuencia de Fibonacci.

fibonacci = function(n) {
  v = vector() #El vector que va a contener los n términos.
  
  if (n >= 1) v[1] = 0 #Si n >= 1, el primer término siempre es 0
  if (n >= 2) v[2] = 1 #Si n >= 2, el segundo término siempre es 1
  
  if (n > 2) {
    for(i in 3:n){ #Necesario 2 términos anteriores antes de empezar las sumas.
      v[i] = v[i - 1] + v[i - 2] #El término siguiente será la suma de los 2 
    }                            #anteriores
  }
  return(v) #Retornamos el vector
}

fibonacci(8)

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 2 -----------------------------------#

#Se te pide que implementes una función en R llamada fibonacci_iterative,
#que tome como argumento un número entero positivo n y retorne el nésimo 
#término de la secuencia de Fibonacci usando un enfoque iterativo.

fibonacci_iterative = function(n) {
  
  if(n == 1) return(0)
  if(n == 2) return(1)
  
  if(n > 2) {
    t.a = 0 #Primer Término
    t.b = 1 #Segundo Término
    
    for(i in 3:n) { #Usando ciclo for (Iterativo)
      t.sig = t.a + t.b #T. Siguiente = Suma de los 2 anteriores.
      t.a = t.b #El primer término, ahora es el segundo anterior
      t.b = t.sig #El segundo término, ahora es la suma
    }
    
    return(t.sig) #Retornamos la suma total
  }
}

fibonacci_iterative(8)

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 3 -----------------------------------#

#Implementa una función en R que calcule el n-ésimo término de la
#secuencia de Fibonacci utilizando un enfoque recursivo. 

fibonacci_recursive = function(n) {
  if(n == 1) return(0)
  if(n == 2) return(1)
  
  if(n > 2) return(fibonacci_recursive(n - 1) + 
                     fibonacci_recursive(n - 2)) #Usando recursividad
}

fibonacci_recursive(100)

#¿Qué observas al intentar calcular el término 100? ---------------------------#
#Tarda mucho en hacer todos los cálculos en el algoritmo recursivo.

#Cómo afecta la recursión a la eficiencia del cálculo? ------------------------#
#La recursión sin optimización resulta en una complejidad mayor, haciendo el 
#cálculo ineficiente para valores grandes de n.

#¿Ocurre lo mismo que con el enfoque iterativo? -------------------------------#
#No, el enfoque iterativo es mucho más eficiente.

#¿Cómo comparas el ambos enfoques para calcular grandes valores de n? ---------#
#Podemos hacer la comparación midiendo los tiempos de ejecución de ambos
#algoritmos, o tambien hllando su función de complejidad.

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 4 -----------------------------------#

#Implementa una función en R llamada suma que tome como argumento un número 
#entero positivo n y calcule la suma de los primeros n números consecutivos
#(es decir, la suma de 1 a n). Condiciones extras.

suma = function(n){
  a = 0 #Iniciamos la suma en 0
  for(i in 0:n) a = a + i #Acumulamos la suma total en "a"
  return(paste("La suma de los primeros", n, "números consecutivos es", a))
}

suma(100) #Resultados Correctos Excepto cuando se ingrean valores negativos.

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 5 -----------------------------------#

#Implementa una función en R llamada suma que tome como argumento un número 
#entero n. La función debe realizar lo siguiente:
# - Validación
# - Manejo de Errores

suma = function(n) {
  if(n <= 0) return("El número insertado es inválido") #Manejo de Errores
  if(n > 0) { #Validación
    a = 0
    for(i in 0:n) a = a + i
    return(paste("La suma de los primeros", n, "números consecutivos es", a))
  }
}

suma(100)

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 6 -----------------------------------#

#Implementa una función en R llamada an_pa que tome como argumentos tres valores:
  
#a1: El primer término de una progresión aritmética.
#n: El número de términos.
#r: La razón o diferencia común entre los términos consecutivos.

#La función debe calcular y mostrar el n-ésimo término (an) de la progresión 
#aritmética utilizando la fórmula.

an_pa = function(a1, n, r) {
  return(a1 + (n - 1)*r)
}

an_pa(5, 10, 3) #Térimino 10, a1 = 5, r = 3

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 7 -----------------------------------#

#Implementa una función llamada PA_nter que tome como argumentos tres valores:

#a1: El primer término de una progresión aritmética.
#n: El número de términos que se desean generar.
#r: La razón o diferencia común entre los términos consecutivos.

#La función debe generar y retornar un vector que contenga los primeros
#n términos de la progresión aritmética, utilizando la fórmula

PA_nter = function(a1, n, r) {
  v = vector()
  for(i in 1:n) {
    v[i] = a1 + (i - 1)*r
  }
  return(v)
}

PA_nter(5, 10, 3)

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 8 -----------------------------------#

#mplementa una función en R llamada cal_sum_ter que tome como
#argumentos tres valores:
  
#a1: El primer término de una progresión aritmética.
#n: El número de términos que se desean generar.
#r: La razón o diferencia común entre los términos consecutivos.

#La función debe realizar lo siguiente: (Muchas consideraciones)

cal_sum_ter = function(a1, n, r) {
  a = 0 #Aqui almacenamos la suma
  v = vector()
  for(i in 1:n) {
    v[i] = a1 + (i - 1)*r #Generar los términos
  }
  for(i in v) {
    a = a + i #Suma de los términos en v
  }
  return(list(v, a))
}

cal_sum_ter(5, 10, 3)

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 9 -----------------------------------#

#Implementa una función en R llamada suma_n_cuadrados que tome como argumento un 
#número entero positivo n. La función debe realizar lo siguiente: (Leer la PD)

suma_n_cuadrados = function(n) {
  v = vector(); a = 0
  for(i in 1:n) v[i] = i^2 #Generar los términos:
  for(i in v) a = a + i #Calcular la suma
  return(list(v, a))
}

suma_n_cuadrados(5)

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 10 ----------------------------------#

#Implementa una función en R llamada poligono que tome como argumento un número 
#entero n, que representa el número de lados de un polígono. 
#La función debe realizar lo siguiente: (Leer la PD)

poligono = function(n) {
  if (n < 3) { #Manejo de Errores
    return("Con el número de lados proporcionado no se puede formar un polígono")
    
  } else if (n <= 12) { #Identificación del Polígono
    nombre = switch(n - 2, #Usamos switch para no usar muchos if else
                    "Triángulo", "Cuadrilátero", "Pentágono", "Hexágono",
                    "Heptágono", "Octágono", "Nonágono", "Decágono",
                    "Undecágono", "Dodecágono") 
    
  } else nombre = paste("El polígono tiene", n, "lados") #si n > 12
  
  #Debido a que el código es secuencial, solo se ejecuta si n >= 3
  angulo = (n - 2) * 180 / n
  return(list(nombre, angulo))
}

poligono(5); poligono(4)

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 11 ----------------------------------#

#Implementar una función en R que muestre en letras el número de la
#cara de un dado obtenido al azar.

dado = function(){
  return(switch(sample(1:6, 1), #Usamos switch para no usar muchos if else
                "Uno", "Dos", "Tres", "Cuatro", "Cinco", "Seis"))
}

dado()

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 12 ----------------------------------#

#Implementa una función en R que sume todos los números pares menores o iguales 
#a N (Número entero positivo cualquiera). La función debe devolver el resultado 
#de la suma solo si N es positivo.

suma_pares = function(N) {
  if(N > 0) { #Devolver la suma solo si N es positivo
    a = 0 #Aqui acumulamos la suma
    for(i in 1:N) {
      if(i %% 2 == 0) a = a + i #Si al dividir entre 2, el resto sale 0
    }
    return(a)
  } else return(paste(N, "no es positivo."))
}

suma_pares(7)

#------------------------------------------------------------------------------#
#------------------------------ EJERCICIO 12 ----------------------------------#
# ORDENAMIENTO POR INSERCIÓN

insertion_sort = function(a) {
  for (i in 2:length(a)) { #Paso 1: Comienza i en 2
    key = a[i]  # Almacena el valor actual (key) que va a ser comparado
    j = i - 1  # Inicia el índice para comparar con los elementos anteriores
    
    while (j > 0 && key < a[j]) { #Paso 2, Mientras j > 0, osea, se pueda hacer 
      a[j + 1] = a[j]             #una comparación, y si "key" < a[j] el valor de
      j = j - 1                   #a[j] toma la posición de "key". Se resta j -1
    }                             #para seguir haciendo comparaciones mientras se pueda.
    a[j + 1] = key #El nuevo key, avanzando en arreglo.
  }
  return(a)  # Retorna el array ordenado 
}

a = c(5, 2, 4, 6, 1, 3)
insertion_sort(a) #https://visualgo.net/en/sorting

