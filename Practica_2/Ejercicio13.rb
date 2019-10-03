# 13. Modificá la implementación del ejercicio anterior para que GenericFactory sea un módulo que se incluya como Mixin en las
# subclases que implementaste. ¿Qué modificaciones tuviste que hacer en tus clases?


module GenericFactory

	def self.create(**args)
		new(**args)
	end

	def initialize(**args)
		raise NotImplementedError
	end

end


class Test

	include GenericFactory

	def initialize(**args)
	end
	
end



a = Test.new