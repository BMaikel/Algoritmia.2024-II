#------------------------------------------------------------------------------#
# Diseñar una función que sume los N números naturales.

suma = function(N){
  a = 0
  for(i in 0:N) {
    a = a + i 
  }
  return(a)
}

suma(5)

#------------------------------------------------------------------------------#
# Diseñar una función que le pida al usuario un número N y sume los N números 
# naturales indicados. Además, de indicar un número negativo, indicar que es 
# un número inválido.

suma = function() {
  while (TRUE) {
    N = readline(prompt = "Ingrese un número: ")
    N = as.numeric(N)
    if(N < 0) {
      print("Número Inválido")
    }
    else {
      a = 0
      for(i in 0:N) {
        a = a + i
      }
      print(a)
    }
  }
}

suma()
