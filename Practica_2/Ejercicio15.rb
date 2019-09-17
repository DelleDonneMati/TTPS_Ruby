#15. Analizá el script Ruby presentado a continuación e indicá:
VALUE = 'global'

module A
	
	VALUE = 'A'
	
	class B
		VALUE = 'B'

		def self.value
			VALUE
		end

		def value
			'iB'
		end
	end

	def self.value
		VALUE
	end
end

class C
	class D
		VALUE = 'D'

		def self.value
			VALUE
		end
	end

	module E
		def self.value
			VALUE
		end
	end

	def self.value
		VALUE
	end
end

class F < C
	VALUE = 'F'
end

# i . ¿Qué imprimen cada una de las siguientes sentencias? ¿De dónde está obteniendo el valor?
# a. puts A.value
# b. puts A::B.value
# c. puts C::D.value
# d. puts C::E.value
# e. puts F.value
# ii. ¿Qué pasaría si ejecutases las siguientes sentencias? ¿Por qué?
# a. puts A::value
# b. puts A.new.valuec. puts B.value
# d. puts C::D.value
# e. puts C.value
# f. puts F.superclass.value


puts A.value #A
puts A::B.value #B
puts C::D.value #D
puts C::E.value #global
puts F.value #global

puts 

puts A::value #A
#puts A.new.valuec => A es un módulo, no se puede instanciar
#puts B.value => B está fuera del alcance, debido a que está definido dentro del módulo A
puts C::D.value #D
puts C.value #global
puts F.superclass.value #global












