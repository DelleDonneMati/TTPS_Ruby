#10. Escribí una función llamada a_ul que reciba un Hash y retorne un String con los pares de
#clave/valor del hash formateados en una lista HTML <ul>. Por ejemplo:
# a_ul({	perros:	1,	gatos:	1,	peces:	0})
#	=>	"<ul><li>perros:	1</li><li>gatos:	1</li><li>peces:	0</li></ul>"


def a_ul(hash) 
	"<ul> \
		#{hash.map do |key, value| "<li>#{key}: #{value}</li>"end}\
	</ul>" 
end

p a_ul({ perros: 1, gatos: 1, peces: 0})