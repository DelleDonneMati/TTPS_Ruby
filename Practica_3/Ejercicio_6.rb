# 6. Suponé que tenés el siguiente script y se te pide que lo hagas resiliente (tolerante a
# fallos), intentando siempre que se pueda recuperar la situación y volver a intentar la
# operación que falló. Realizá las modificaciones que consideres necesarias para lograr
# que el script sea más robusto.

def dividir array
	@retries ||= 0
	begin
	array.map{|x| x/(x-1)}
	rescue ZeroDivisionError
		puts "Dividi por cero >.<"
		if @retries < 1
			@retries += 1
			retry
		end
	end
	puts "-------------------"
	puts'El resultado es: %s'%array.join(', ')
end

#	Como	primer	paso	se	pide	al	usuario	que	indique	la	cantidad	de	números	que	ingresará.
cantidad = 0
while cantidad < 5
	puts'¿Cuál es la cantidad de números que ingresará?	Debe ser al menos 5'
	cantidad = gets.to_i
end

#	Luego	se	almacenan	los	números
numeros = 1.upto(cantidad).map do
	puts'Ingrese un número'
	numero = gets.to_i
end
#	Y	finalmente	se	imprime	cada número	dividido por su	número entero inmediato anterior
	dividir numeros 	
