package com.ospip

class Empleado {

	String cuil
	String nombre
	String apellido
	String sexo
	Date fechaNacimiento
	Pais paisOrigen //igual que decir nacionalidad, pero estándar
	String tipoDocumento
	String dni
	String estadoCivil
	String domicilioCalle
	String domicilioNumero
	String domicilioPiso
	String domicilioDepartamento
	String codigoPostal
	Provincia provincia
	Localidad localidad
	String telefonoParticular
	String telefonoLaboral
	String telefonoCelular
	String email
	boolean cuotaSindical
	String numeroBeneficiarioSindical
	boolean obraSocial
	String numeroBeneficiarioObraSocial
	boolean discapacidad
	boolean cad //sirve para saber si se atiende en el centro propio para discapacitados
	String estudiosCursados
	String observaciones
	boolean delegado //para saber si es delegado o no
	Date fechaInicioMandato  //fecha de inicio de mandato (si es delegado)
	Date fechaFinMandato  //fecha de fin de mandato (si es delegado)
	Date fechaIngresoEmpresa
	String legajo
	Categoria categoria
	Subcategoria subcategoria
	int estado
	
	static hasMany = [familiar:EmpleadoFamiliar]
	static belongsTo = [empresa:Empresa]
	
    static constraints = {
		cuil (blank: false, unique: true, maxSize: 16)
		nombre (blank: false, maxSize: 50)
		apellido (blank: false, maxSize: 50)
		sexo (blank: false, inList: ["Masculino", "Femenino", "Otro"])
		fechaNacimiento (blank: false, max: new Date())
		paisOrigen (blank: false)
		tipoDocumento (blank: false, inList: ["DNI: Documento Nacional de Identidad", "CI: Cédula de Identidad", "LE :Libreta de Enrolamiento", "LC: Libreta Cívica"])
		dni (blank: false, unique: true, size: 6..8)
		estadoCivil (blank: false, inList: ["Soltero/a", "Casado/a", "Divorciado/a", "Viudo/a"])
		domicilioCalle (blank: false, maxSize: 50)
		domicilioNumero (blank: false, maxSize: 4)
		domicilioPiso (blank: true)
		domicilioDepartamento (blank: true)
		codigoPostal (blank: false, size: 4..8)
		provincia (blank: false)
		localidad (blank: false)
		telefonoParticular (blank: true, maxSize: 30)
		telefonoLaboral (blank: true, maxSize: 30)
		telefonoCelular (blank: true, maxSize: 30)
		email (blank: true, email: true)
		cuotaSindical (blank: false)
		numeroBeneficiarioSindical (blank: true)
		obraSocial (blank: false)
		numeroBeneficiarioObraSocial (blank: true)
		discapacidad (blank: false)
		cad (blank: true)
		estudiosCursados (blank: false, inList: ["Primario incompleto", "Primario completo", "Secundario incompleto", "Secundario completo", "Terciario incompleto", "Terciario completo", "Universitario incompleto", "Universitario completo", "Posgrado"])
		observaciones (blank: true)
		delegado (blank: false)
		fechaInicioMandato (blank: true, nullable: true, max: new Date())
		fechaFinMandato (blank: true, nullable: true, min: new Date())
	}
}
