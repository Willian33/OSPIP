package com.ospip

class Provincia {

	String nombre
	
	static hasMany = [localidad: Localidad]
	static belongsTo = [pais: Pais]
	
    static constraints = {
    }
}
