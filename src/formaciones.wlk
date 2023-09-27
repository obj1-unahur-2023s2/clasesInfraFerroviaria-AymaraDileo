class Formacion{
	const property pasajeros
	const vagones = []
	
	method agregarVagon(unVagon){
		vagones.add(unVagon)
	}
	
	method cantidadDeVagonesPopulares(){
		return vagones.count({v => v.esPopular()})
	}
	method esCarguera(){
		return vagones.all({v => v.esCarguera()})
	}
	method dispersionDePesos(){
		const pesoMaximoDelMasPesado = vagones.max({v => v.pesoMaximo()}).pesoMaximo()
		const pesoMaximoDelMasLiviano = vagones.min({v => v.pesoMaximo()}).pesoMaximo()
		
		return pesoMaximoDelMasPesado - pesoMaximoDelMasLiviano
	}
	method baniosDeLaFormacion(){
		return vagones.filter({v => v.tieneBanios()}).size() 
	}
	method vagonesConPasajeros(){
		return vagones.filter({v => v.cantDePasajeros() > 0})
	}
	method elQueMenosLlevaPasajeros() {
		return self.vagonesConPasajeros().min({p => p.cantDePasajeros()})
	}
	
	method elQueMasLlevaPasajeros() {
		return self.vagonesConPasajeros().max({p => p.cantDePasajeros()})
	}
	method estaEquilibrada(){
		var elQueMasLleva = self.elQueMasLlevaPasajeros().cantDePasajeros()
		var elQueMenosLleva = self.elQueMenosLlevaPasajeros().cantDePasajeros()
		return (elQueMasLleva - elQueMenosLleva) <= 20
	}
	method estaOrganizada(){
		
	}
	
}








