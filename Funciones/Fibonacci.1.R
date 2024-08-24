#------------------------------------------------------------------------------#
# Diseñar una función para obtener el término N en una suseción 
# fibonacci.

fib = function(N) {
  if(N == 1) {
    return(0)
  } else if(N == 2) {
    return(1)
  } else {
    return(fib(N - 1) + fib(N - 2)) #Usando recursividad
  }
}

fib(8)

fib = function(N) {
  if(N == 1) {
    return(0)
  } else if(N == 2) {
    return(1)
  } else {
    t.a = 0 #Término 1
    t.b = 1 #Término 2
    for(i in 3:N) { #Usando ciclo for
      t.sig = t.a + t.b
      t.a = t.b
      t.b = t.sig
    }
    return(t.sig)
  }
}

fib(8)

#------------------------------------------------------------------------------#
# Diseñar una función que imprima los N primeros términos de la sucesión 
# fibonacci.

fib = function(N) {
  a = vector()
  a[1] = 0 #Término 1
  a[2] = 1 #Término 2
  if(N == 1) {
    return(a[N])
  } else if(N == 2) {
    return(a)
  } else {
    for(i in 3:N) { #Usando ciclo for
      a[i] = a[i-1] + a[i-2]
    }
    return(a)
  }
}

fib(8)
