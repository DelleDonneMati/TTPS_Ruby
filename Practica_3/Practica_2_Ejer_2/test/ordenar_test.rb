require 'simplecov'
require 'minitest/autorun'
require 'Ejercicio2'


class Ejercicio2Test < Minitest::Test
    def setup
        @arreglo = OrdenarArreglo.new
    end

    def test_ordernar_arreglo
        assert_equal [1,2,3,4,5], @arreglo.ordenar(4,2,5,3,1)
    end

end