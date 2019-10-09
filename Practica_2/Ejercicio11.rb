# 11. Implementá el Mixin Countable que te permita hacer que cualquier clase cuente la cantidad de veces que los métodos de
# instancia definidos en ella es invocado. Utilizalo en distintas clases, tanto desarrolladas por vos como clases de la librería standard
# de Ruby, y chequeá los resultados. El Mixin debe tener los siguientes métodos:
# i . count_invocations_of(sym) : método de clase que al invocarse realiza las tareas necesarias para contabilizar las
# invocaciones al método de instancia cuyo nombre es sym (un símbolo).
# ii. invoked?(sym) : método de instancia que devuelve un valor booleano indicando si el método llamado sym fue invocado al
# menos una vez en la instancia receptora.
# iii . invoked(sym) : método de instancia que devuelve la cantidad de veces que el método identificado por sym fue invocado en
# la instancia receptora.

module Mixin_Countable

	def invocations 
		@invocations_list ||=[]
	end

	def count_invocations_of(sym)
		p invocations.length
	end

	def add_invocations(sym)
		@invocations_list << sym
	end

	def invoked?(sym)
		@invocations_list[sym]>0
	end

	def invoked(sym) 
		@invocations_list[sym]
	end

end

# Ejemplo de uso de Countable
class Greeter
	extend Mixin_Countable
	def hi
		puts 'Hey!'
	end
	
	def bye
		puts 'See you!'
	end
	# Indico que quiero llevar la cuenta de veces que se invoca el método #hi
	count_invocations_of :hi
end

a = Greeter.new
b = Greeter.new
#a.invoked? :hi
# => false
#b.invoked? :hi
# => false
a.hi
#a.add_invocations :hi
a.count_invocations_of :hi
# Imprime "Hey!"
a.invoked :hi
# => 1
b.invoked :hi
# => 0
a.add_invocations :hi
a.count_invocations_of :hi
