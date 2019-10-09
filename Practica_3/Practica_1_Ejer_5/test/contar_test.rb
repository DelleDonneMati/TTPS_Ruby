require 'simplecov'
require 'minitest/autorun'
require 'Ejercicio5'

class Ejercicio5Test < Minitest::Test
	def setup
		@numeros = NumerosABuscar.new
	end

	def test_contar_numeros_en_oracion
		assert_equal 5, @numeros.contar("La	casa	de	la	esquina	tiene	la	puerta	roja 
			y	la	ventana	blanca." , "la")
	end

end