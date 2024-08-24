#------------------------------------------------------------------------------#
# Diseñar un algoritmo de ordenamiento utilizando el método de inserción.

insertion_sort = function(a) {
  for (i in 2:length(a)) {
    key = a[i]  # Almacena el valor actual (key) que va a ser comparado
    j = i - 1  # Inicia el índice para comparar con los elementos anteriores
    
    while (j > 0 && key < a[j]) {
      a[j + 1] = a[j]
      j = j - 1
    }
    a[j + 1] = key
  }
  return(a)  # Retorna el array ordenado
}

a = c(5, 1, 3)
insertion_sort(a)

#------------------------------------------------------------------------------#

insertion_sort = function(a) { #Ordenamiento de menor a mayor
  for (i in 1:length(a)) {
    key = a[i]
    while(i-1 > 0 && key < a[i-1]) { #Para ordenar de mayor a menor debemos 
      a[i] = a[i-1]                  #Cambiar key < a[i-1] por >.
      i = i - 1
      }
    a[i] = key
  }
  return(a)
}

a = c(5, 1, 3, 2, 7, 9)
insertion_sort(a)

#------------------------------------------------------------------------------#
