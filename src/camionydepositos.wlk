object camion {
	var property elementosDeCarga=[]

	method carga(algo){
		return elementosDeCarga.add(algo)
	}
	method descarga(algo){
		elementosDeCarga.remove(algo)
	}
	method tienes_cargado_algo(algo){
		return elementosDeCarga.contains(algo)
	}

}
object deposito{
	var property guardado=[]
	
	method recibir(algo){
		guardado.addAll({algo})
	}
	method llenar_camion(){
		guardado.forEach{algo=>guardado.remove(algo)and camion.carga(algo)}
	}
}
