object knight_Rider {

	var property peso = 500
	const peligrosidad = 10

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
	const peligrosidad = 2

	method peso() {
		return ladrillo * cantidad
	}

}

