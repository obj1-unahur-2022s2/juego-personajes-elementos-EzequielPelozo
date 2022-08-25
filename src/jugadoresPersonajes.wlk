import armas.*
import objectos.*



object luisa {
	var personajeActivo
	
	method personajeActivo(unPersonaje){personajeActivo = unPersonaje}
	method personajeActivo() = personajeActivo
	
	method aparece(elemento){
		self.personajeActivo().encontrar(elemento)
	}
}

/////////////////////////////////////////////////////////////////////////////////////////////

object floki {
	var arma = ballesta
	
	method arma(unArma){arma = unArma}
	method encontrar(elemento){
		if(arma.estaCargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.usar()
		}		
		
	}
	
	
}


object mario {
	var valorRecolectado = 0
	var ultimoElemento
	
	method ultimoElemento() = ultimoElemento
	
	method encontrar(elemento){
		valorRecolectado += elemento.otorgarValor()
		elemento.recibirTrabajo()
		ultimoElemento = elemento
	}
	
	method estaFeliz() = valorRecolectado > 49 || self.ultimoElemento().altura() > 9

}

