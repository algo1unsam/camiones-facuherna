object knight_Rider {

	var property peso = 500
	const property peligrosidad = 10

}

object bumblebee {

	var property peso = 800
	// TODO acá sólo le estas asignando un objeto
	// pero la idea es que cuando yo la mande el mensaje 
	// peligrosidad(), me devuelva el número que la representa
	// acá eso no estaría pasando
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
		// TODO este "algo" de dónde sale???
		// creo que acá te referis a que la lista tiene elementos
		if (algo > 0) {
			return cosas.max{ algo => algo.peligrosidad() }.peligrosidad()
		} else return 0
	}

}

// TODO acá te falta configurar el elemento embalado
// que no es una lista sino un sólo elemento
object embalajeDeSeguridad {

	var property cosas = []

	method agregarObjectos(algo) {
		cosas.add(algo)
	}

	method removerObjectos(algo) {
		cosas.remove(algo)
	}

	// El peso es el peso de la cosa que tenga adentro
	
	method peso() {
		return cosas.sum{ objecto => objecto.peso() }
	}
	
	//TODO esto depende de la cosa embalada
	method peligrosidad() {
		return (cosas.max{ algo => algo.peligrosidad() }.peligrosidad())/2
	}

}

