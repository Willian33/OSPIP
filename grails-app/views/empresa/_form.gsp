<%@ page import="com.ospip.Empresa" %>
<%@ page contentType="text/html; UTF-8" %>


<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'padron', 'error')} required">
	<label for="padron">
		<g:message code="empresa.padron.label" default="Padrón" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="padron" maxlength="10" required="" value="${empresaInstance?.padron}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'cuit', 'error')} required">
	<label for="cuit">
		<g:message code="empresa.cuit.label" default="Cuit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cuit" maxlength="16" required="" value="${empresaInstance?.cuit}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'razonSocial', 'error')} required">
	<label for="razonSocial">
		<g:message code="empresa.razonSocial.label" default="Razón Social" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="razonSocial" maxlength="100" required="" value="${empresaInstance?.razonSocial}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'telefonoComercial', 'error')} required">
	<label for="telefonoComercial">
		<g:message code="empresa.telefonoComercial.label" default="Teléfono Comercial" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefonoComercial" maxlength="30" required="" value="${empresaInstance?.telefonoComercial}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'provincia', 'error')}">
	<label for="provincia">
		<g:message code="empresa.provincia.label" default="Provincia" />
		<span class="required-indicator">*</span>
	</label>
	
		<g:select name="provinciaId" from="${com.ospip.Provincia.list()}" optionKey="id" optionValue="nombre" value="${empresaInstance?.provincia?.id }" noSelection="${['null':'Seleccione una Provincia']}"
		
		onchange="${remoteFunction (
                        controller: 'provincia',
                        action: 'obtenerLocalidadesEmpresa',
                        params: '\'id=\' + this.value',
						optionKey:'id',
						optionValue: 'escape(this.value)',
                        update: 'localidadDiv'
                )}"
		/>

</div>
<div id = "localidadDiv">
	<g:if test = "${empresaInstance.localidad}">
		<g:include controller = "provincia" action= "obtenerLocalidadesEmpresa" id = "${empresaInstance?.provincia?.id}" params="[localidadSeleccionada: empresaInstance.localidad.id]" />
	</g:if>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'codigoPostal', 'error')} required">
	<label for="codigoPostal">
		<g:message code="empresa.codigoPostal.label" default="Código Postal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoPostal" maxlength="8" required="" value="${empresaInstance?.codigoPostal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'direccionCalle', 'error')} required">
	<label for="direccionCalle">
		<g:message code="empresa.direccionCalle.label" default="Dirección Calle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccionCalle" maxlength="100" required="" value="${empresaInstance?.direccionCalle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'direccionNumero', 'error')} required">
	<label for="direccionNumero">
		<g:message code="empresa.direccionNumero.label" default="Dirección N°" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccionNumero" maxlength="4" required="" value="${empresaInstance?.direccionNumero}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'direccionPiso', 'error')} ">
	<label for="domicilioPiso">
		<g:message code="empresa.direccionPiso.label" default="Piso N°" />
	</label>
	<g:textField name="direccionPiso" value="${empresaInstance?.direccionPiso}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'direccionDepartamento', 'error')} ">
	<label for="domicilioDepartamento">
		<g:message code="empresa.direccionDepartamento.label" default="Departamento" />
		
	</label>
	<g:textField name="direccionDepartamento" value="${empresaInstance?.direccionDepartamento}"/>
</div>

<div id = "contenedorDireccionEspecial" style="display: none;" >

	<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'direccionCasa', 'error')} ">
		<label for="direccionCasa">
			<g:message code="empresa.direccionCasa.label" default="Casa" />
			
		</label>
		<g:textField name="direccionCasa" value="${empresaInstance?.direccionCasa}"/>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'direccionCircuito', 'error')} ">
		<label for="direccionCircuito">
			<g:message code="empresa.direccionCircuito.label" default="Circuito" />
			
		</label>
		<g:textField name="direccionCircuito" value="${empresaInstance?.direccionCircuito}"/>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'direccionManzana', 'error')} ">
		<label for="direccionManzana">
			<g:message code="empresa.direccionManzana.label" default="Manzana" />
			
		</label>
		<g:textField name="direccionManzana" value="${empresaInstance?.direccionManzana}"/>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'direccionEdificio', 'error')} ">
		<label for="direccionEdificio">
			<g:message code="empresa.direccionEdificio.label" default="Edificio" />
			
		</label>
		<g:textField name="direccionEdificio" value="${empresaInstance?.direccionEdificio}"/>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'direccionSeccion', 'error')} ">
		<label for="direccionSeccion">
			<g:message code="empresa.direccionSeccion.label" default="Sección" />
			
		</label>
		<g:textField name="direccionSeccion" value="${empresaInstance?.direccionSeccion}"/>
	</div>
	
	<div id = "contenedorCircunscripcion" class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'circunscripcion', 'error')}" style="display: none;" >
		<label for="circunscripcion">
			<g:message code="empresa.circunscripcion.label" default="Circunscripción" />
		</label>
		<g:field type="number" name="circunscripcion" value="${fieldValue(bean: empresaInstance, field: 'circunscripcion')}"/>
	</div>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'tipoEmpleador', 'error')} required">
	<label for="tipoEmpleador">
		<g:message code="empresa.tipoEmpleador.label" default="Tipo Empleador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoEmpleador" from="${empresaInstance.constraints.tipoEmpleador.inList}" required="" value="${empresaInstance?.tipoEmpleador}" noSelection="${['null':'-']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="empresa.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${empresaInstance?.email}"/>
</div>

<%--
<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'empleado', 'error')} ">
	<label for="empleado">
		<g:message code="empresa.empleado.label" default="Empleado" />
		
	</label>
	
<ul class="one-to-many">
	<g:each in="${empresaInstance?.empleado?}" var="e">
	    <li><g:link controller="empleado" action="show" id="${e.id}">${e?.nombre}</g:link></li>
	</g:each>
	<li class="add">
	<g:link controller="empleado" action="create" params="['empresa.id': empresaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'empleado.label', default: 'Empleado')])}</g:link>
	</li>
</ul>

</div>
--%>
