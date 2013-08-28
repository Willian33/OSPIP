package com.ospip

class Localidad {

	String nombre
	
	static belongsTo = [provincia: Provincia]
	
    static constraints = {
    }
	
	static mapping = {
		sort "nombre"
    } 
}
