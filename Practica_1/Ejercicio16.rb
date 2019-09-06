#16. Escribí una función que encuentre la suma de todos los números naturales múltiplos de
#3 ó 5 menores que un número tope que reciba como parámetro.

def encontrar unNumero
	suma = 0
	# p ((1..unNumero).select{|num| num % 3 == 0 or num % 5 == 0 })
	(1..unNumero).each{|num| if num % 3 == 0 or num % 5 == 0 and num < unNumero; p num; suma = suma + num end}
	puts "Suma: #{suma}" 
end

puts "Ingrese un numero"
a = gets.chomp.to_i
encontrar(a)

