import agregadosDelCamion.*
import depositos.*

object camion {

	var property elementosDeCarga = []

	method carga(algo) {
		if (cargas.aceptaCarga(algo)) {
			elementosDeCarga.add(algo)
		}
	}

	method descarga(algo) {
		elementosDeCarga.remove(algo)
	}

	method tienes_cargado_algo(algo) {
		return elementosDeCarga.contains(algo)
	}

}

object motoneta {

	var property elementosDeCarga = []

	method carga(algo) {
		if (algo.peso() < 100 and algo.peligrosidad() < 5) {
			elementosDeCarga.add(algo)
		}
	}

	method descarga(algo) {
		elementosDeCarga.remove(algo)
	}

}

object deposito {

	var property guardado = []

	method recibir(transporte) {
		guardado.addAll({ transporte.elementosDeCarga()})
		// elementos de carga es la lista del deposito entonces
		transporte.elementosDeCarga().clear()
	}

	method llenar_camion(transporte) {
		guardado.forEach{ algo => transporte.carga(algo)}
		.forEach{ algo => guardado.remove(algo)}
	}

}

