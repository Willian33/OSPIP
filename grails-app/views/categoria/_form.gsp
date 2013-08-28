<%@ page import="com.ospip.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'empleado', 'error')} required">
	<label for="empleado">
		<g:message code="categoria.empleado.label" default="Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empleado" name="empleado.id" from="${com.ospip.Empleado.list()}" optionKey="id" required="" value="${categoriaInstance?.empleado?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="categoria.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${categoriaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'subcategoria', 'error')} ">
	<label for="subcategoria">
		<g:message code="categoria.subcategoria.label" default="Subcategoria" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoriaInstance?.subcategoria?}" var="s">
    <li><g:link controller="subcategoria" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="subcategoria" action="create" params="['categoria.id': categoriaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'subcategoria.label', default: 'Subcategoria')])}</g:link>
</li>
</ul>

</div>

