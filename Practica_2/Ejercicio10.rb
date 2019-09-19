# 10. Implementá el módulo Reverso para utilizar como Mixin e incluilo en alguna clase para probarlo. Reverso debe contener los
# siguientes métodos:
# i . di_tcejbo : Imprime el object_id del receptor en espejo (en orden inverso).
# ii. ssalc : Imprime el nombre de la clase del receptor en espejo.


module Reverso

	def di_tcejbo objecto
		p objecto.object_id.to_s.reverse		
	end

	def ssalc clase
		p clase.class.to_s.reverse
	end

end


class Algo

	include Reverso

end

a = Algo.new

a.di_tcejbo a
a.ssalc String