class VagonDePasajero{
	const property ancho
    const property largo
    const property tieneBanios
    var property estaOrdenado = true       
       
    method cantDePasajeros(){
    	const pasajeros = if(ancho <= 3){8 * largo}else{10 * largo}
    	return if(not estaOrdenado){0.max(pasajeros-15)}else{pasajeros}
    }
    method cargaMaxima(){
       	return if (tieneBanios){ 300} else {800}
    }
    method pesoMaximo() = 2000 + 80*self.cantDePasajeros() + self.cargaMaxima()
    method esPopular() = self.cantDePasajeros() > 50
    method esCarguera() = self.pesoMaximo() >= 1000
    method hacerMantenimiento(){
       	estaOrdenado = true
    }
}

class VagonDeCarga{
	const property cargaMaximaIdeal
	var property maderasSueltas
	
	method tieneBanios() = false
	method cantDePasajeros() = 0
	method cargaMaxima() = 0.max(cargaMaximaIdeal - 400 * maderasSueltas)
	method pesoMaximo() = 1500 + self.cargaMaxima()
	method esPopular() = self.cantDePasajeros() > 50
	method esCarguera() = self.pesoMaximo() >= 1000
	method hacerMantenimiento(){
		maderasSueltas = 0.max(maderasSueltas - 2)
	}
}

class VagonDeDormitorio{
	const property cantidadCompartimientos
	var property camasPorCompartimiento
	
	method cargaMaxima() = 0
	method cantDePasajeros() = cantidadCompartimientos * camasPorCompartimiento
	method pesoMaximo() = 4000 + 80 * self.cantDePasajeros() + self.cargaMaxima()
	method esPopular() = self.cantDePasajeros() > 50
	method esCarguera() = self.pesoMaximo() >= 1000
	method hacerMantenimiento(){}
}



























