<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'localidad', 'error')} required">
	<label for="localidad">
		<g:message code="empleado.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:if test = "${localidadesList}">
		<g:select id = "localidad" name="localidadId" from="${localidadesList}" required = ""  noSelection="${['null':'Seleccione una Localidad']}"
		value="${localidadSeleccionada}" optionKey="id" optionValue="nombre"/>
	</g:if>
</div>

