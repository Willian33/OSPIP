package com.ospip

class EmpleadoFamiliar {

	String nombre
	String apellido
	String sexo
	Date fechaNacimiento
	Pais paisOrigen
	String tipoDocumento
	String dni
	String cuil
	String parentesco
	boolean discapacidad
	boolean cad //sirve para saber si se atiende en el centro propio para discapacitados
	String email
	String numeroBeneficiarioObraSocial
	
	static belongsTo = [empleado:Empleado]
	
    static constraints = {
		nombre (blank: false, maxSize: 50)
		apellido (blank: false, maxSize: 50)
		sexo (blank: false, inList: ["Masculino", "Femenino", "Otro"])
		fechaNacimiento (blank: false, max: new Date())
		paisOrigen (blank: false, maxSize: 50)
		tipoDocumento (blank: false, inList: ["DNI: Documento Nacional de Identidad", "CI: Cédula de Identidad", "LE :Libreta de Enrolamiento", "LC: Libreta Cívica"])
		dni (blank: false, unique: true, size: 6..8)
		cuil (blank: false, unique: true, maxSize: 16)
		parentesco (blank: false, inList: ["Esposo/a", "Concuvino/a", "Padre", "Madre", "Hijo/a", "Hermano/a", "Nieto/a"])
		discapacidad (blank: false)
		cad (blank: true)
		email (blank: true, email: true)
		numeroBeneficiarioObraSocial (blank: false)
    }
}
