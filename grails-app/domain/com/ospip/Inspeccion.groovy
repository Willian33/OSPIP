package com.ospip

class Inspeccion {
	
	String condicionesDeTrabajo
	String categoriaDeTrabajadores
	String bonificacion
	String vestimentaDeTrabajo
	String otros
	Date fecha = new Date()
	
	static belongsTo = [usuario:Usuario]
	
    static constraints = {
		condicionesDeTrabajo (blank: true)
		categoriaDeTrabajadores (blank: true)
		bonificacion (blank: true)
		vestimentaDeTrabajo (blank: true)
		otros (blank: true)
    }
}
