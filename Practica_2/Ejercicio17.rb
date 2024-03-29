# 17. Implementá un método que reciba como parámetros un Hash y Proc , y que devuelva un nuevo Hash cuyas las claves sean los
# valores del Hash recibido como parámetro, y cuyos valores sean el resultado de invocar el Proc con cada clave del Hash
# original.
# Por ejemplo:
# hash = { 'clave' => 1, :otra_clave => 'valor' }
# procesar_hash(hash, ->(x) { x.to_s.upcase })
# => { 1 => 'CLAVE', 'valor' => 'OTRA_CLAVE' }


def procesar_hash(hash , proc)
	p Hash[hash.map { |k , v| [ v , proc.call(k)] }]
end


hash = { 'clave' => 1, :otra_clave => 'valor' }


procesar_hash(hash, ->(x) { x.to_s.upcase })
