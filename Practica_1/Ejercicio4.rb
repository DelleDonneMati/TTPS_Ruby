#4. Escribí una función que convierta a palabras la hora actual, dividiendo en los siguientes
#rangos los minutos:
#Si el minuto está entre 0 y 10, debe decir "en punto",
#si el minuto está entre 11 y 20, debe decir "y cuarto",
#si el minuto está entre 21 y 34, debe decir "y media",
#si el minuto está entre 35 y 44, debe decir "menos veinticinco" (de la hora siguiente),
#si el minuto está entre 45 y 55, debe decir "menos cuarto" (de la hora siguiente),
#y si el minuto está entre 56 y 59, debe decir "casi las" (y la hora siguiente)

def hora_Palabras(unMinuto)
	case unMinuto
	when 0
	  puts "You ran out of gas."
	when 1...20
	  p "The tank is almost empty. Quickly, find a gas station!"
	when 21...70
	  "You should be ok for now."
	when 71...100
	  "The tank is almost full."
	else
	  "Error"
	end

end
	p t = Time.now
	a = t.strftime("%M")
	hora_Palabras(a)
	puts "hola"