#6. Modificá la función anterior para que sólo considere como aparición del segundo string
#cuando se trate de palabras completas. Por ejemplo:
# contar_palabras("La	casa de	la esquina tiene la	puerta roja	y la ventana blanca.",	"la")
#	=>	4

def contar_palabras universe, target
    p universe.scan(/\b#{target}\b/i).size
end

puts "Ingrese una oracion"
a = gets.chomp
puts "Ingrese una palabra para buscar"
b = gets.chomp

contar_palabras(a,b)