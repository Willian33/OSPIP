<%@ page import="com.ospip.Inspeccion" %>


<div class="fieldcontain ${hasErrors(bean: inspeccionInstance, field: 'condicionesDeTrabajo', 'error')} ">
	<label for="condicionesDeTrabajo">
		<g:message code="inspeccion.condicionesDeTrabajo.label" default="Condiciones De Trabajo" />
		
	</label>
	<g:textArea  name="condicionesDeTrabajo" value="${inspeccionInstance?.condicionesDeTrabajo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inspeccionInstance, field: 'categoriaDeTrabajadores', 'error')} ">
	<label for="categoriaDeTrabajadores">
		<g:message code="inspeccion.categoriaDeTrabajadores.label" default="Categoria De Trabajadores" />
		
	</label>
	<g:textArea  name="categoriaDeTrabajadores" value="${inspeccionInstance?.categoriaDeTrabajadores}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inspeccionInstance, field: 'bonificacion', 'error')} ">
	<label for="bonificacion">
		<g:message code="inspeccion.bonificacion.label" default="Bonificacion" />
		
	</label>
	<g:textArea  name="bonificacion" value="${inspeccionInstance?.bonificacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inspeccionInstance, field: 'vestimentaDeTrabajo', 'error')} ">
	<label for="vestimentaDeTrabajo">
		<g:message code="inspeccion.vestimentaDeTrabajo.label" default="Vestimenta De Trabajo" />
		
	</label>
	<g:textArea  name="vestimentaDeTrabajo" value="${inspeccionInstance?.vestimentaDeTrabajo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inspeccionInstance, field: 'otros', 'error')} ">
	<label for="otros">
		<g:message code="inspeccion.otros.label" default="Otros" />
		
	</label>
	<g:textArea  name="otros" value="${inspeccionInstance?.otros}"/>
</div>

