object knight_Rider {

	var property peso = 500
	const property peligrosidad = 10

}

object bumblebee {

	var property peso = 800
	var property peligrosidad = auto

}

object auto {

	const peligrosidad = 15

}

object robot {

	const peligrosidad = 30

}

object paquete_de_ladrillos {

	const ladrillo = 2
	var property cantidad = 1
	const property peligrosidad = 2

	method peso() {
		return ladrillo * cantidad
	}

}

object contenedor_portuario {

	var property cosas = []
	const pesoPropio = 100

	method agregarObjectos(algo) {
		cosas.add(algo)
	}

	method removerObjectos(algo) {
		cosas.remove(algo)
	}

	method peso() {
		return cosas.sum{ objecto => objecto.peso() } + pesoPropio
	}

	method peligrosidad() {
		if (algo > 0) {
			return cosas.max{ algo => algo.peligrosidad() }.peligrosidad()
		} else return 0
	}

}

object embalajeDeSeguridad {

	var property cosas = []

	method agregarObjectos(algo) {
		cosas.add(algo)
	}

	method removerObjectos(algo) {
		cosas.remove(algo)
	}

	method peso() {
		return cosas.sum{ objecto => objecto.peso() }
	}

	method peligrosidad() {
		return (cosas.max{ algo => algo.peligrosidad() }.peligrosidad())/2
	}

}

