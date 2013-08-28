<%@ page import="com.ospip.Subcategoria" %>



<div class="fieldcontain ${hasErrors(bean: subcategoriaInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="subcategoria.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${com.ospip.Categoria.list()}" optionKey="id" required="" value="${subcategoriaInstance?.categoria?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subcategoriaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="subcategoria.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${subcategoriaInstance?.nombre}"/>
</div>

