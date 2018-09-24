import depositos.*
import transporteYDepositos.*

object cargas {

	var property cargaMaxima = 0
	
	// TODO por qué no está directamnete en camión?
	method pesoDelaCargaDelCamion() {
		return camion.elementosDeCarga().sum{ algo => algo.peso() }
	}

	// TODO acá devuelta, le está pidiendo toda la información al camion
	// así que lo mas correcto sería que está ahí
	method cargaDisponibleDelCamion() {
		return cargaMaxima - self.pesoDelaCargaDelCamion()
	}

	// TODO y esto podría directamente agregarse a la lista
	// elementosDeCarga que está en camión
	method aceptaCarga(algo) {
		return algo.peso() <= cargaMaxima
	}
	

}


// TODO estos dos objectos no tienen mucho comportamiento y están fuertemente acoplados la camión
// es decir, para tener sentido, están todo el tiempo pidiendole cosas al camión
// como que no tienen responsabilidad por si mismos, pareciera

object peligro{
	
	var property limitePeligrosidad=10
	
	method peligrosidadDelCamion() {
		return camion.elementosDeCarga().max{ algo => algo.peligrosidad() }
	}
	
	method puedePasar(){
		return self.peligrosidadDelCamion().peligrosidad()>limitePeligrosidad
	}
	
}

