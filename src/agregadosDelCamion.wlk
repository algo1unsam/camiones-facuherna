import depositos.*
import transporteYDepositos.*

object cargas {

	var property cargaMaxima = 0

	method pesoDelaCargaDelCamion() {
		return camion.elementosDeCarga().sum{ algo => algo.peso() }
	}

	method cargaDisponibleDelCamion() {
		return cargaMaxima - self.pesoDelaCargaDelCamion()
	}

	method aceptaCarga(algo) {
		return algo.peso() <= cargaMaxima
	}
	

}

object peligro{
	
	var property limitePeligrosidad=10
	
	method peligrosidadDelCamion() {
		return camion.elementosDeCarga().max{ algo => algo.peligrosidad() }
	}
	
	method puedePasar(){
		return self.peligrosidadDelCamion().peligrosidad()>limitePeligrosidad
	}
	
}

