package com.ospip

class Rol {

	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
}
