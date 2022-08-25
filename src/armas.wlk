object ballesta {
	
	var flecha = 10
	
	method usar(){flecha--}
	method estaCargada() = flecha > 0
	method potencia() = 4
	
}

object jabalina {
	
	var estaCargada = true
	method usar(){estaCargada = false}
	method estaCargada() = estaCargada
	method potencia() = 30
}
