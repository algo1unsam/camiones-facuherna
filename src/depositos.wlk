object knight_Rider {
	
	var property peso= 500
	const peligrosidad=10
}

object bumblebee{
	var property peso= 800
	const auto=15  
	const robot=30
	method peligrosidad(estado){
		if (estado==auto){
			return auto
		}else return robot
	}
	
}

object paquete_de_ladrillos{
	const ladrillo=2
	var property cantidad=1
	const peligrosidad =2
	
	method peso(){
		return ladrillo*cantidad
	}
}
