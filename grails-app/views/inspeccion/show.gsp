
<%@ page import="com.ospip.Inspeccion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inspeccion.label', default: 'Inspeccion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-inspeccion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-inspeccion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list inspeccion">
			
				<g:if test="${inspeccionInstance?.condicionesDeTrabajo}">
				<li class="fieldcontain">
					<span id="condicionesDeTrabajo-label" class="property-label"><g:message code="inspeccion.condicionesDeTrabajo.label" default="Condiciones De Trabajo" /></span>
					
						<span class="property-value" aria-labelledby="condicionesDeTrabajo-label"><g:fieldValue bean="${inspeccionInstance}" field="condicionesDeTrabajo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inspeccionInstance?.categoriaDeTrabajadores}">
				<li class="fieldcontain">
					<span id="categoriaDeTrabajadores-label" class="property-label"><g:message code="inspeccion.categoriaDeTrabajadores.label" default="Categoria De Trabajadores" /></span>
					
						<span class="property-value" aria-labelledby="categoriaDeTrabajadores-label"><g:fieldValue bean="${inspeccionInstance}" field="categoriaDeTrabajadores"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inspeccionInstance?.bonificacion}">
				<li class="fieldcontain">
					<span id="bonificacion-label" class="property-label"><g:message code="inspeccion.bonificacion.label" default="Bonificacion" /></span>
					
						<span class="property-value" aria-labelledby="bonificacion-label"><g:fieldValue bean="${inspeccionInstance}" field="bonificacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inspeccionInstance?.vestimentaDeTrabajo}">
				<li class="fieldcontain">
					<span id="vestimentaDeTrabajo-label" class="property-label"><g:message code="inspeccion.vestimentaDeTrabajo.label" default="Vestimenta De Trabajo" /></span>
					
						<span class="property-value" aria-labelledby="vestimentaDeTrabajo-label"><g:fieldValue bean="${inspeccionInstance}" field="vestimentaDeTrabajo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inspeccionInstance?.otros}">
				<li class="fieldcontain">
					<span id="otros-label" class="property-label"><g:message code="inspeccion.otros.label" default="Otros" /></span>
					
						<span class="property-value" aria-labelledby="otros-label"><g:fieldValue bean="${inspeccionInstance}" field="otros"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${inspeccionInstance?.id}" />
					<g:link class="edit" action="edit" id="${inspeccionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
