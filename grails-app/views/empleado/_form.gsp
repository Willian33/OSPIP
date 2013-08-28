<%@ page import="com.ospip.Empleado" %>
<%@ page contentType="text/html; UTF-8" %>

<script src="${resource(dir: 'js', file: 'validacionesEmpleado.js')}" type="text/javascript"></script>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="empleado.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${empleadoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="empleado.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" maxlength="50" required="" value="${empleadoInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'cuil', 'error')} required">
	<label for="cuil">
		<g:message code="empleado.cuil.label" default="Cuil" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cuil" maxlength="16" required="" value="${empleadoInstance?.cuil}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="empleado.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${empleadoInstance.constraints.sexo.inList}" required="" value="${empleadoInstance?.sexo}" valueMessagePrefix="empleado.sexo"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="empleado.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${empleadoInstance?.fechaNacimiento}" default="none" noSelection="['':'-']" relativeYears = "[-100..0]" />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'paisOrigen', 'error')} required">
	<label for="paisOrigen">
		<g:message code="empleado.paisOrigen.label" default="País Origen" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="paisOrigenId" from="${com.ospip.Pais.list()}" required="" optionKey="id" optionValue="nombre" value="${empleadoInstance?.paisOrigen?.id } " noSelection="${['null':'Seleccione un País']}" />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'tipoDocumento', 'error')} required">
	<label for="tipoDocumento">
		<g:message code="empleado.tipoDocumento.label" default="Tipo Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoDocumento" from="${empleadoInstance.constraints.tipoDocumento.inList}" required="" value="${empleadoInstance?.tipoDocumento}" valueMessagePrefix="empleado.tipoDocumento"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="empleado.dni.label" default="N° Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dni" maxlength="8" required="" value="${empleadoInstance?.dni}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="empleado.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoCivil" from="${empleadoInstance.constraints.estadoCivil.inList}" required="" value="${empleadoInstance?.estadoCivil}" valueMessagePrefix="empleado.estadoCivil"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'domicilioCalle', 'error')} required">
	<label for="domicilioCalle">
		<g:message code="empleado.domicilioCalle.label" default="Dirección Calle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="domicilioCalle" maxlength="50" required="" value="${empleadoInstance?.domicilioCalle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'domicilioNumero', 'error')} required">
	<label for="domicilioNumero">
		<g:message code="empleado.domicilioNumero.label" default="Dirección N°" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="domicilioNumero" maxlength="4" required="" value="${empleadoInstance?.domicilioNumero}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'domicilioPiso', 'error')} ">
	<label for="domicilioPiso">
		<g:message code="empleado.domicilioPiso.label" default="Piso N°" />
		
	</label>
	<g:textField name="domicilioPiso" value="${empleadoInstance?.domicilioPiso}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'domicilioDepartamento', 'error')} ">
	<label for="domicilioDepartamento">
		<g:message code="empleado.domicilioDepartamento.label" default="Departamento" />
		
	</label>
	<g:textField name="domicilioDepartamento" value="${empleadoInstance?.domicilioDepartamento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'provincia', 'error')} required">
	<label for="provincia">
		<g:message code="empleado.provincia.label" default="Provincia" />
		<span class="required-indicator">*</span>
	</label>
                
     <g:select name="provinciaId" from="${com.ospip.Provincia.list()}" optionKey="id" optionValue="nombre" value="${empleadoInstance?.provincia?.id }" noSelection="${['null':'Seleccione una Provincia']}"
		
		onchange="${remoteFunction (
                        controller: 'provincia',
                        action: 'obtenerLocalidadesEmpresa',
                        params: '\'id=\' + this.value',
						optionKey:'id',
						optionValue: 'escape(this.value)',
                        update: 'localidadDiv'
                )}" />
</div>

<div id = "localidadDiv">
	<g:if test = "${empleadoInstance.localidad}">
		<g:include controller = "provincia" action= "obtenerLocalidadesEmpleado" id = "${empleadoInstance?.provincia?.id}" params="[localidadSeleccionada: empleadoInstance.localidad.id]" />
	</g:if>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'codigoPostal', 'error')} required">
	<label for="codigoPostal">
		<g:message code="empleado.codigoPostal.label" default="Código Postal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoPostal" maxlength="8" required="" value="${empleadoInstance?.codigoPostal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'telefonoParticular', 'error')} ">
	<label for="telefonoParticular">
		<g:message code="empleado.telefonoParticular.label" default="Teléfono Particular" />
		
	</label>
	<g:textField name="telefonoParticular" maxlength="30" value="${empleadoInstance?.telefonoParticular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'telefonoLaboral', 'error')} ">
	<label for="telefonoLaboral">
		<g:message code="empleado.telefonoLaboral.label" default="Teléfono Laboral" />
		
	</label>
	<g:textField name="telefonoLaboral" maxlength="30" value="${empleadoInstance?.telefonoLaboral}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'telefonoCelular', 'error')} ">
	<label for="telefonoCelular">
		<g:message code="empleado.telefonoCelular.label" default="Teléfono Celular" />
		
	</label>
	<g:textField name="telefonoCelular" maxlength="30" value="${empleadoInstance?.telefonoCelular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="empleado.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${empleadoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'cuotaSindical', 'error')} ">
	<label for="cuotaSindical">
		<g:message code="empleado.cuotaSindical.label" default="Cuota Sindical" />
		
	</label>
	<g:checkBox name="cuotaSindical" value="${empleadoInstance?.cuotaSindical}" onChange="activarDiv(this, 'contenedorCuotaSindical')" />
</div>

<div id = "contenedorCuotaSindical" class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'numeroBeneficiarioSindical', 'error')}" style="display: none;" >
	<label for="numeroBeneficiarioSindical">
		<g:message code="empleado.numeroBeneficiarioSindical.label" default="N° Beneficiario Sindical" />
	</label>
	<g:textField name="numeroBeneficiarioSindical" value="${empleadoInstance?.numeroBeneficiarioSindical}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'obraSocial', 'error')} ">
	<label for="obraSocial">
		<g:message code="empleado.obraSocial.label" default="Obra Social" />
		
	</label>
	<g:checkBox name="obraSocial" value="${empleadoInstance?.obraSocial}" onChange="activarDiv(this, 'contenedorObraSocial')" />
</div>

<div id = "contenedorObraSocial" class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'numeroBeneficiarioObraSocial', 'error')} " style="display: none;" >
	<label for="numeroBeneficiarioObraSocial">
		<g:message code="empleado.numeroBeneficiarioObraSocial.label" default="N° Beneficiario Obra Social" />
		
	</label>
	<g:textField name="numeroBeneficiarioObraSocial" value="${empleadoInstance?.numeroBeneficiarioObraSocial}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'discapacidad', 'error')} ">
	<label for="discapacidad">
		<g:message code="empleado.discapacidad.label" default="Discapacidad" />
		
	</label>
	<g:checkBox name="discapacidad" value="${empleadoInstance?.discapacidad}" onChange="activarDiv(this, 'contenedorCad')" />
</div>

<div id = "contenedorCad" class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'cad', 'error')} " style="display: none;" >
	<label for="cad">
		<g:message code="empleado.cad.label" default="Cad" />
		
	</label>
	<g:checkBox name="cad" value="${empleadoInstance?.cad}" />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'estudiosCursados', 'error')} required">
	<label for="estudiosCursados">
		<g:message code="empleado.estudiosCursados.label" default="Estudios Cursados" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estudiosCursados" from="${empleadoInstance.constraints.estudiosCursados.inList}" required="" value="${empleadoInstance?.estudiosCursados}"  noSelection="['null':'Indique el nivel de Estudios']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'observaciones', 'error')} ">
	<label for="observaciones">
		<g:message code="empleado.observaciones.label" default="Observaciones" />
		
	</label>
	<g:textField name="observaciones" value="${empleadoInstance?.observaciones}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="empleado.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${com.ospip.Empresa.list()}" optionKey="id" optionValue="razonSocial" required="" value="${empleadoInstance?.empresa?.id}" class="many-to-one"  noSelection="['null':'Seleccione Empresa']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fechaIngresoEmpresa', 'error')} required">
	<label for="fechaIngresoEmpresa">
		<g:message code="empleado.fechaIngresoEmpresa.label" default="Fecha Ingreso" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaIngresoEmpresa" precision="day"  value="${empleadoInstance?.fechaIngresoEmpresa}" default="none" noSelection="['':'-']" />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'legajo', 'error')} ">
	<label for="legajo">
		<g:message code="empleado.legajo.label" default="Legajo N°" />
		
	</label>
	<g:textField name="legajo" value="${empleadoInstance?.legajo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="empleado.categoria.label" default="Categoría" />
		<span class="required-indicator">*</span>
	</label>
                
     <g:select id = "categoria" name="categoriaId" from="${com.ospip.Categoria.list()}" optionKey="id" optionValue="nombre" value="${empleadoInstance?.categoria?.id }" noSelection="${['null':'Seleccione una Categoría']}"

		onchange="${remoteFunction (
                  controller: 'categoria',
                  action: 'obtenerSubcategorias',
                  params: '\'id=\' + this.value',
				  optionKey:'id',
				  optionValue: 'escape(this.value)',
                  update: 'subcategoriaDiv'
          )}" />
</div>

<div id = "subcategoriaDiv">
	<g:if test = "${empleadoInstance.categoria}">
		<g:include controller = "categoria" action= "obtenerSubcategorias" id = "${empleadoInstance?.categoria?.id}" params="[subcategoriaSeleccionada: empleadoInstance.subcategoria.id]" />
	</g:if>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'delegado', 'error')} required">
	<label for="delegado">
		<g:message code="empleado.delegado.label" default="Delegado" />
	</label>
	<g:checkBox name="delegado" value="${empleadoInstance?.delegado}" onChange="activarDiv(this, 'contenedorDelegado')" />
</div>

<div id = "contenedorDelegado" style="display: none;" >
	<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fechaInicioMandato', 'error')}">
		<label for="fechaInicioMandato">
			<g:message code="empleado.fechaInicioMandato.label" default="Inicio de Mandato" />
		</label>
		<g:datePicker name="fechaInicioMandato" precision="day"  value="${empleadoInstance?.fechaInicioMandato}" default="none" noSelection="['':'-']" relativeYears = "[-50..0]" />
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fechaFinMandato', 'error')}">
		<label for="fechaFinMandato">
			<g:message code="empleado.fechaFinMandato.label" default="Fin de Mandato" />
		</label>
		<g:datePicker name="fechaFinMandato" precision="day"  value="${empleadoInstance?.fechaFinMandato}" default="none" noSelection="['':'-']" relativeYears = "[0..50]" />
	</div>
</div>

<!--
<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'familiar', 'error')} ">
	<label for="familiar">
		<g:message code="empleado.familiar.label" default="Familiar" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empleadoInstance?.familiar?}" var="f">
    <li><g:link controller="empleadoFamiliar" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="empleadoFamiliar" action="create" params="['empleado.id': empleadoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar')])}</g:link>
</li>
</ul>

</div>
  -->

