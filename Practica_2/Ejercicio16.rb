# 16. Escribí un método da_nil? que reciba un bloque, lo invoque y retorne si el valor de retorno del bloque fue nil . Por ejemplo:
# da_nil? { }
# => true
# da_nil? do
# 'Algo distinto de nil'
# end
# => false


def da_nil?
	yield.nil?
end

p da_nil? {}


da_nil? do 
	'Algo distinto de nil'
	 end