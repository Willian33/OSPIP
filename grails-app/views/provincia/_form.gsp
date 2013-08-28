<%@ page import="com.ospip.Provincia" %>

<div class="fieldcontain ${hasErrors(bean: provinciaInstance, field: 'localidad', 'error')} ">
	<label for="localidad">
		<g:message code="provincia.localidad.label" default="Localidad" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${provinciaInstance?.localidad?}" var="l">
    <li><g:link controller="localidad" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="localidad" action="create" params="['provincia.id': provinciaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'localidad.label', default: 'Localidad')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: provinciaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="provincia.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${provinciaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: provinciaInstance, field: 'pais', 'error')} required">
	<label for="pais">
		<g:message code="provincia.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pais" name="pais.id" from="${com.ospip.Pais.list()}" optionKey="id" required="" value="${provinciaInstance?.pais?.id}" class="many-to-one"/>
</div>

