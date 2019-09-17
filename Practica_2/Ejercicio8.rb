# 8. Modelá con una jerarquía de clases algo sencillo que represente la siguiente situación:
# Tres tipos de vehículo: Auto , Moto y Lancha
# Los tres tipos arrancan usando una llave.
# El auto, adicionalmente, requiere que no esté puesto el freno de mano y que el cambio esté en punto muerto. La moto, por
# otra parte, requiere una patada (sin la llave). La lancha arranca con la llave y listo.
# El arranque de los tres vehículos se prueba en un taller. La especificación de Taller es la siguiente:
# class Taller
# 	def probar(objeto)
# 		objeto.arrancar
# 	end
# end
# Suponé que, posteriormente, el taller necesita probar una motosierra. ¿Podrías hacerlo? ¿Cómo? ¿Qué concepto del lenguaje
# estás usando para poder realizar esto?

class Taller
	def probar(objeto)
		objeto.arrancar
	end
end

class Vehiculo
	attr_accessor :llave

	def initialize(l)
		@llave = l
	end	

end

class Auto < Vehiculo
	attr_accessor :freno_de_mano, :cambio

	def initialize(f,c)
		super(true)		
		@freno_de_mano = f
		@cambio = c
	end	

	def arrancar
		if freno_de_mano == true and cambio == "Punto muerto" and @llave == true
			puts "Arranca el Auto"
		end
	end
end

class Moto < Vehiculo
	attr_accessor :patada

	def initialize(pat)
		super(true)
		@patada = pat
	end	

	def arrancar
		if patada == true and @llave == true
			puts "Arranca la Moto"
		end
	end

end

class Lancha < Vehiculo

	def intialize
		super(true)
	end

	def arrancar
		if @llave == true
			puts "Arranca la Lancha"
		end
	end
end

T=Taller.new
V=Vehiculo.new(true)
A=Auto.new(true,"Punto muerto")
M=Moto.new(true)
L=Lancha.new(true)

T.probar(M)
T.probar(A)
T.probar(L)
