package com.ospip

class Alerta {

	String nombre
	String motivo
	Empresa empresaInspeccion
	String descripcionMotivo
	Date fechaYHoraAlerta
	Date fechaCreacion = new Date()
	Usuario usuarioCreador
	int estado
	
	static hasMany = [usuario: Usuario]
	static belongsTo = [ Usuario ]
	
    static constraints = {
		nombre (blank: false)
		motivo (blank: false, inList: ["Inspección", "Otro"])
		descripcionMotivo (blank: true)
		fechaYHoraAlerta (blank: false, nullable: false, min: new Date())
		estado (blank: true)
		empresaInspeccion (blank: true, nullable: true)
    }
}
