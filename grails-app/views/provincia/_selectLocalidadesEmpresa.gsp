<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'localidad', 'error')} required">
	<label for="localidad">
		<g:message code="empresa.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:if test = "${localidadesList}">
		<g:select id = "localidad" name="localidadId" from="${localidadesList}" required = "" noSelection="${['null':'Seleccione una Localidad']}"
		value="${localidadSeleccionada}" onChange="evaluarLocalidad(this.value)"
		optionKey="id" optionValue="nombre"/>
	</g:if>
</div>

<script type="text/javascript">
	function evaluarLocalidad(localidad)
	{
		var contenedorDireccionEspecial = document.getElementById("contenedorDireccionEspecial");
		var contenedorCircunscripcion = document.getElementById("contenedorCircunscripcion");
		if ((localidad == 185) || (localidad == 280) || (localidad == 166)) {
			contenedorDireccionEspecial.style.display='block';
		} else {
			contenedorDireccionEspecial.style.display='none';
		}

		if (localidad == "166") {
			contenedorCircunscripcion.style.display='block';
		} else {
			contenedorCircunscripcion.style.display='none';
		}
	}
</script>

