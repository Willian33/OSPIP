package com.ospip

class Subcategoria {

	String nombre
	
	static belongsTo = [categoria: Categoria]
	
    static constraints = {
    }
}
