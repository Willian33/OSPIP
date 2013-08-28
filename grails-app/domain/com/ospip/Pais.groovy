package com.ospip

class Pais {

	String nombre
	
	static hasMany = [provincia: Provincia]
	
    static constraints = {
    }
}
