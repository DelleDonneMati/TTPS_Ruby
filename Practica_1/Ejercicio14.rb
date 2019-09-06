#14. Dado un color expresado en notación RGB 	(https://es.wikipedia.org/wiki/RGB)	 , debés calcular
#su representación entera y hexadecimal, donde la notación entera se define como 
#red+green*256	+	blue*256*256 y la hexadecimal como el resultado de expresar en
#hexadecimal el valor de cada color y concatenarlos en orden. Por ejemplo:
#notacion_hexadecimal([ 0,	128,	255] )
#	=>	'#0080FF'
#notacion_entera([ 0,	128,	255] )
#	=>	16744448


#red = Integer("0xFF0000")
#blue = Integer("0x0000FF")
#green = Integer("0x00FF00")



def notacion_hexadecimal array
	"0x" + (array[0].to_s(16) + array[1].to_s(16) + array[2].to_s(16))
end


def notacion_entera array
	array[0] + array[1] * 256 + array[2] * 256 * 256

end


p notacion_hexadecimal([0,128,255])

p notacion_entera([0,128,255])