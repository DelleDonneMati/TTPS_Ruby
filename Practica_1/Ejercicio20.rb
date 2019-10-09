# 20. Si no lo hiciste de esa forma en la práctica 1, escribí un enumerador que calcule la serie de Fibonacci.

fib = Enumerator.new &-> y {
  a, b = 0,1
  loop {
    y << a
    a,b = a+b,a
  }
}


p fib.take(10)