import estados.*
import cosos.* 

/**
 * Paradigmas de Programaci�n - UTN - FRBA
 *  
 * Implementaci�n del ejercicio 3 de la gu�a 3 "de papel" de 
 * objetos (colecciones) en versi�n Wollok. La misma se encuentra en:
 * http://pdep.com.ar/material/guas-de-ejercicios
 *  
 * WORK IN PROGRESS!!!
 * TODO: Puntos desde F en adelante (hasta M).
 */

/**
 * Un cami�n b�sico.
 */
class Camion {
	const minimoBienCargado = 0.75
	var cosos = []
	var capacidadMaxima = 200
	var estado = disponible
	
	constructor(unaCapacidad) {
		capacidadMaxima = unaCapacidad
	}
	
	/* Getters */
	method cosos() = cosos
	method capacidadMaxima() = capacidadMaxima
	
	/* Setters */
	method estado(unEstado){
		estado = unEstado
	}
	
	/** Ejercicios A + C */
	method cargar(unCoso){
		if(estado.puedeCargar(self, unCoso))
			cosos.add(unCoso)
		else
			throw new NoPuedeRealizarAccion(self, "No puede cargarse")
	}
	
	/** Ejercicio B */
	method puedeCargar(unCoso) = estado.puedeCargar(self, unCoso)
	method tieneCapacidadPara(unCoso) = 
		self.pesoCargado() + unCoso.peso() <= capacidadMaxima
	method pesoCargado() = cosos.sum({unCoso => unCoso.peso()})
	
	/** Ejercicio D.i */
	method salirDeReparacion(){
		estado.salirDeReparacion(self)
	}
	/** Ejercicio D.ii */
	method pasarAReparacion(){
		estado.pasarAReparacion(self)
	}
	/** Ejercicio D.iii */
	method salirDeViaje(){
		estado.salirDeViaje(self)
	}
	/** Ejercicio D.iv */
	method volverDeViaje(){
		estado.volverDeViaje(self)
	}
	
	/** Ejercicio E */
	method listoParaPartir() = estado.listoParaPartir(self)
	method bienCargado() = 
		self.pesoCargado() >= self.capacidadMaxima() * minimoBienCargado
}