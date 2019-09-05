#8. ¿Qué hace el siguiente código?



[ :upcase,:downcase,:capitalize,:swapcase].map	do 	|meth|
	p "TTPS Ruby". send(meth)
end

# Rta:
# :upcase -> "TTPS RUBY"
# :downcase -> "ttps ruby"
# :capitalize -> "Ttps ruby"
# :swapcase -> "ttps rUBY"