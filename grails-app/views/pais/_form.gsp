<%@ page import="com.ospip.Pais" %>



<div class="fieldcontain ${hasErrors(bean: paisInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="pais.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${paisInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paisInstance, field: 'provincia', 'error')} ">
	<label for="provincia">
		<g:message code="pais.provincia.label" default="Provincia" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${paisInstance?.provincia?}" var="p">
    <li><g:link controller="provincia" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="provincia" action="create" params="['pais.id': paisInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'provincia.label', default: 'Provincia')])}</g:link>
</li>
</ul>

</div>

