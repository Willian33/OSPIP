package com.ospip

class Empresa {

	String padron
	String cuit
	String razonSocial
	String telefonoComercial
	Provincia provincia
	Localidad localidad
	String circunscripcion
	String codigoPostal
	String direccionCalle
	String direccionNumero
	String direccionPiso
	String direccionDepartamento
	String direccionCasa
	String direccionCircuito
	String direccionManzana
	String direccionEdificio
	String direccionSeccion
	String tipoEmpleador
	String email
	
	static hasMany = [empleado:Empleado]
	
    static constraints = {
		padron (blank: false, maxSize: 10)
		cuit (blank: false, unique: true, maxSize: 16)
		razonSocial (blank: false, maxSize: 100)
		telefonoComercial (blank: false, maxSize: 30)
		provincia (blank: false)
		localidad (blank: false)
		circunscripcion  (blank: true)
		codigoPostal (blank: false, size: 4..8)
		direccionCalle (blank: false, maxSize: 100)
		direccionNumero (blank: false, maxSize: 4)
		direccionPiso (blank: true)
		direccionDepartamento (blank: true)
		direccionCasa (blank: true)
		direccionCircuito (blank: true)
		direccionManzana (blank: true)
		direccionEdificio (blank: true)
		direccionSeccion (blank: true)
		tipoEmpleador (blank: false, inList: ["Plástica", "Por opción", "Mixto"])
		email (blank: true, email: true)
    }
}
