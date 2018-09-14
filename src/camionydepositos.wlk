object camion {

	var property elementosDeCarga = []

	method carga(algo) {
		elementosDeCarga.add(algo)
	}

	method descarga(algo) {
		elementosDeCarga.remove(algo)
	}

	method tienes_cargado_algo(algo) {
		return elementosDeCarga.contains(algo)
	}

}

object deposito {

	var property guardado = []

	method descargar() {
		var descarga = []
		descarga.addAll({ camion.elementosDeCarga()})
		camion.elementosDeCarga().clear()
		return descarga
	}

	method recibir() {
		guardado.addAll({ self.descargar()})
	}

	method llenar_camion() {
		guardado.forEach{ algo => camion.carga(algo)}.remove(algo)
	}

}

