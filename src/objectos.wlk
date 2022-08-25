

object castillo {
	
	var nivelDeDefensa = 150
	
	method altura() = 20
	method recibirAtaque(potenciaDeArma){
		nivelDeDefensa = 0.max(nivelDeDefensa - potenciaDeArma)
	}
	method recibirTrabajo(){
		nivelDeDefensa = 200.min(nivelDeDefensa + 20)
	}
	method otorgarValor() = nivelDeDefensa/5
	
}

object aurora{
	
	var estaViva = true
	
	method altura() = 1
	method recibirAtaque(potenciaDeArma){
		if(potenciaDeArma > 9){
			estaViva = false
		}
	}
	method recibirTrabajo(){}
	method otorgarValor() = 15
	
} 

object tipa{
	var altura = 8
	
	method altura() = altura
	method recibirAtaque(potenciaDeArma){}
	method recibirTrabajo(){altura++}
	method otorgarValor() = altura * 2
	
}

