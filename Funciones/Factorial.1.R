#------------------------------------------------------------------------------#
# Diseñar un algoritmo que calcule el factorial de un número

fac = function(N) {
  if(N == 0) {
    return(1) #Factorial de 0 = 1
  }
  else {
    return(N * fac(N-1)) #Recursión
  }
}

fac(5)
fac(12)

#------------------------------------------------------------------------------#

fac = function(N) {
  if(N == 0) {
    return(1)
  } 
  else {
    r = 1
    for(i in 1:N) { #Utilizando ciclos for
      r = r*i
    }
    return(r)
  }
}

fac(5)
fac(12)
