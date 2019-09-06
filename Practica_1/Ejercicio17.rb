#17. Cada nuevo término en la secuencia de Fibonacci es generado sumando los 2 términos
#anteriores. Los primeros 10 términos son: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55. Considerando los
#términos en la secuencia de Fibonacci cuyos valores no exceden los 4 millones,
#encontrá la suma de los términos pares.

def fibonacci (rango)
	fib = 0
	tmp = 1
	suma = 0
	if rango > 0
	  (1..rango).each {
	    print "[#{fib}] "
	    if (fib % 2 == 0)
	    	suma = suma + fib
	 	end
	    tmp = tmp + fib
	    fib = tmp - fib
	  }
	  puts ""
	  puts "La suma de los pares es de: #{suma}"
	else
	  puts "El número ingresado debe ser mayor a cero"
	end
end

puts "Ingrese un numero"
rango = gets.chomp.to_i
puts "Numeros de Fibonacci (con el maximo de #{rango}) "
fibonacci rango
