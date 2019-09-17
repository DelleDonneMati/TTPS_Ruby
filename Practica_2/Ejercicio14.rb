# 14. Extendé las clases TrueClass y FalseClass para que ambas respondan al método de instancia opposite , el cual en cada caso
# debe retornar el valor opuesto al que recibe la invocación al método. Por ejemplo:
# false.opposite
# => true
# true.opposite
# => false
# true.opposite.opposite
# => true


module Opposite
	def opposite
		!self
	end
end

TrueClass.include Opposite
FalseClass.include Opposite


p false.opposite
p true.opposite
p true.opposite.opposite