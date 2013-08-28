<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'subcategoria', 'error')} required">
	<label for="subcategoria">
		<g:message code="empleado.subcategoria.label" default="Subcategoría" />
		<span class="required-indicator">*</span>
	</label>
	<g:if test = "${subcategoriasList}">
		<g:select id = "subcategoria" name="subcategoriaId" from="${subcategoriasList}" required = "" noSelection="${['null':'Seleccione una Subcategoría']}"
		value="${subcategoriaSeleccionada}" optionKey="id" optionValue="nombre"/>
	</g:if>
</div>

