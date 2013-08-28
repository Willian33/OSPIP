<%@ page import="com.ospip.Localidad" %>



<div class="fieldcontain ${hasErrors(bean: localidadInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="localidad.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${localidadInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: localidadInstance, field: 'provincia', 'error')} required">
	<label for="provincia">
		<g:message code="localidad.provincia.label" default="Provincia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="provincia" name="provincia.id" from="${com.ospip.Provincia.list()}" optionKey="id" required="" value="${localidadInstance?.provincia?.id}" class="many-to-one"/>
</div>

