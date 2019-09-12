#Implementá el método cuanto_falta? que opcionalmente reciba como parámetro un objeto Time y que calcule la cantidad de minutos que 
#faltan para ese momento. Si el parámetro de fecha no es provisto, asumí que la consulta es para la medianoche de hoy.

#Por ejemplo:

#cuanto_falta? Time.new(2017, 12, 31, 23, 59, 59)
#Debe retornar la cantidad de minutos que faltan para las 23:59:59 del 31/12/2017
#cuanto_falta?
#Debe retornar la cantidad de minutos que faltan para la medianoche de hoy


def cuanto_falta? (time = Time.now)
	p dia_siguiente = Time.new(time.year, time.month, time.day+1,0,0,0)
	p (dia_siguiente - time).fdiv(60)
end

cuanto_falta? 

