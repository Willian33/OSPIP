package com.ospip

class Categoria {

	String nombre
	
	static hasMany = [subcategoria: Subcategoria]
	
    static constraints = {
    }
}
