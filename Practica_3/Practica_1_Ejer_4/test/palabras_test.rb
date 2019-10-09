require 'simplecov'
require 'minitest/autorun'
require 'Ejercicio4'


class Ejercicio4Test < Minitest::Test
	def setup
		@palabras = Palabras.new	
	end

	def test_en_palabras
		assert_equal "y cuarto",  @palabras.en_palabras()
	end


end
