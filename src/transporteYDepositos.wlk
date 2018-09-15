import agregadosDelCamion.*

object camion {

	var property elementosDeCarga = []

	method carga(algo) {
		if (algo < cargas.cargaDisponibleDelCamion()) {
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
		transporte.elementosDeCarga().clear()
	}

	method llenar_camion(transporte) {
		guardado.forEach{ algo => transporte.carga(algo)}
		.forEach{ algo => guardado.remove(algo)}
	}

}

