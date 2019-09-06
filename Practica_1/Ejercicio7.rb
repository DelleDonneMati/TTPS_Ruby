#7. Dada una cadena cualquiera, y utilizando los métodos que provee la clase String, realizá 
#las siguientes operaciones sobre el string:
#Imprimilo con sus caracteres en orden inverso.
#Eliminá los espacios en blanco que contenga.
#Convertí cada uno de sus caracteres por su correspondiente valor ASCII.
#Cambiá las vocales por números (a por 4, e por 3, i por 1, o por 0, u por 6).

def inverso string
	p string.reverse
end

def fuera_blancos string
	p string.gsub!(/\s+/, '') 
end

def valor_ASCII string
	p string.bytes
end

def vocales_Numeros string
	puts string.gsub!(/a+/,'4').gsub!(/e+/,'3').gsub!(/i+/,'1').gsub!(/o+/,'0').gsub!(/u+/,'6')
end


puts "Ingrese una oracion"
a = gets.chomp
inverso(a)
fuera_blancos(a)
valor_ASCII(a)
vocales_Numeros(a)