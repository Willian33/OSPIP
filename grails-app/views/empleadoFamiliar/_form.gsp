<%@ page import="com.ospip.EmpleadoFamiliar" %>
<%@ page contentType="text/html; UTF-8" %>

<script src="${resource(dir: 'js', file: 'validacionesEmpleado.js')}" type="text/javascript"></script>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'numeroBeneficiarioObraSocial', 'error')} required">
	<label for="numeroBeneficiarioObraSocial">
		<g:message code="empleadoFamiliar.numeroBeneficiarioObraSocial.label" default="N° Beneficiario Obra Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroBeneficiarioObraSocial" required="" value="${empleadoFamiliarInstance?.numeroBeneficiarioObraSocial}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="empleadoFamiliar.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${empleadoFamiliarInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="empleadoFamiliar.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" maxlength="50" required="" value="${empleadoFamiliarInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="empleadoFamiliar.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${empleadoFamiliarInstance.constraints.sexo.inList}" required="" value="${empleadoFamiliarInstance?.sexo}" valueMessagePrefix="empleadoFamiliar.sexo"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="empleadoFamiliar.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${empleadoFamiliarInstance?.fechaNacimiento}" default="none" noSelection="['':'-']" relativeYears = "[-100..0]" />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'paisOrigen', 'error')} required">
	<label for="paisOrigen">
		<g:message code="empleadoFamiliar.paisOrigen.label" default="Pais Origen" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="paisOrigenId" from="${com.ospip.Pais.list()}" required="" optionKey="id" optionValue="nombre" value="${empleadoFamiliarInstance?.paisOrigen?.id } " noSelection="${['null':'Seleccione un País']}" />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'tipoDocumento', 'error')} required">
	<label for="tipoDocumento">
		<g:message code="empleadoFamiliar.tipoDocumento.label" default="Tipo Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoDocumento" from="${empleadoFamiliarInstance.constraints.tipoDocumento.inList}" required="" value="${empleadoFamiliarInstance?.tipoDocumento}" valueMessagePrefix="empleadoFamiliar.tipoDocumento"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="empleadoFamiliar.dni.label" default="N° Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dni" maxlength="8" required="" value="${empleadoFamiliarInstance?.dni}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'cuil', 'error')} required">
	<label for="cuil">
		<g:message code="empleadoFamiliar.cuil.label" default="Cuil" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cuil" maxlength="16" required="" value="${empleadoFamiliarInstance?.cuil}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'parentesco', 'error')} required">
	<label for="parentesco">
		<g:message code="empleadoFamiliar.parentesco.label" default="Parentesco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="parentesco" from="${empleadoFamiliarInstance.constraints.parentesco.inList}" required="" value="${empleadoFamiliarInstance?.parentesco}" noSelection="${['null':'Seleccione el parentesco']}" />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'discapacidad', 'error')} ">
	<label for="discapacidad">
		<g:message code="empleadoFamiliar.discapacidad.label" default="Discapacidad" />
		
	</label>
	<g:checkBox name="discapacidad" value="${empleadoFamiliarInstance?.discapacidad}" onChange="activarDiv(this, 'contenedorCad')" />
</div>

<div id = "contenedorCad" class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'cad', 'error')} " style="display: none;">
	<label for="cad">
		<g:message code="empleadoFamiliar.cad.label" default="Cad" />
		
	</label>
	<g:checkBox name="cad" value="${empleadoFamiliarInstance?.cad}" />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="empleadoFamiliar.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${empleadoFamiliarInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoFamiliarInstance, field: 'empleado', 'error')} required">
	<label for="empleado">
		<g:message code="empleadoFamiliar.empleado.label" default="Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empleado" name="empleado.id" from="${com.ospip.Empleado.list()}" optionKey="id" optionValue="nombre" required="" value="${empleadoFamiliarInstance?.empleado?.id}" class="many-to-one" noSelection="${['null':'Seleccione Empleado']}" />
</div>

