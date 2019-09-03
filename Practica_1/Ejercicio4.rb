#4. Escribí una función que convierta a palabras la hora actual, dividiendo en los siguientes
#rangos los minutos:
#Si el minuto está entre 0 y 10, debe decir "en punto",
#si el minuto está entre 11 y 20, debe decir "y cuarto",
#si el minuto está entre 21 y 34, debe decir "y media",
#si el minuto está entre 35 y 44, debe decir "menos veinticinco" (de la hora siguiente),
#si el minuto está entre 45 y 55, debe decir "menos cuarto" (de la hora siguiente),
#y si el minuto está entre 56 y 59, debe decir "casi las" (y la hora siguiente)

def  en_palabras()
	t = Time.now
	case t.min
	when 0...10
		puts "En punto"
	when 11...20
		puts "y cuarto"	
	when 21...34
		puts "y media"
	when 35...44
		a = t.hour + 1
		puts "#{a} menos veinticinco "
	when 45...55
		puts "#{a} menos cuarto"
	when 56...59
		puts "#{a} casi las"		
	end
end


en_palabras()