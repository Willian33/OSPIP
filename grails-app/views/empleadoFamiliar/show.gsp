
<%@ page import="com.ospip.EmpleadoFamiliar" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-empleadoFamiliar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empleadoFamiliar" class="content scaffold-show" role="main">
			<h1>${empleadoFamiliarInstance?.nombre} ${empleadoFamiliarInstance?.apellido}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empleadoFamiliar">
				
				<g:if test="${empleadoFamiliarInstance?.numeroBeneficiarioObraSocial}">
				<li class="fieldcontain">
					<span id="numeroBeneficiarioObraSocial-label" class="property-label"><g:message code="empleadoFamiliar.numeroBeneficiarioObraSocial.label" default="N° Beneficiario Obra Social" /></span>
					
						<span class="property-value" aria-labelledby="numeroBeneficiarioObraSocial-label"><g:fieldValue bean="${empleadoFamiliarInstance}" field="numeroBeneficiarioObraSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="empleadoFamiliar.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${empleadoFamiliarInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="empleadoFamiliar.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${empleadoFamiliarInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="empleadoFamiliar.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${empleadoFamiliarInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="empleadoFamiliar.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${empleadoFamiliarInstance?.fechaNacimiento}" type="date" style="long" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.paisOrigen}">
				<li class="fieldcontain">
					<span id="paisOrigen-label" class="property-label"><g:message code="empleadoFamiliar.paisOrigen.label" default="Pais Origen" /></span>
					
						<span class="property-value" aria-labelledby="paisOrigen-label"><g:fieldValue bean="${empleadoFamiliarInstance}" field="paisOrigen.nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.tipoDocumento}">
				<li class="fieldcontain">
					<span id="tipoDocumento-label" class="property-label"><g:message code="empleadoFamiliar.tipoDocumento.label" default="Tipo Documento" /></span>
					
						<span class="property-value" aria-labelledby="tipoDocumento-label"><g:fieldValue bean="${empleadoFamiliarInstance}" field="tipoDocumento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.dni}">
				<li class="fieldcontain">
					<span id="dni-label" class="property-label"><g:message code="empleadoFamiliar.dni.label" default="N° Documento" /></span>
					
						<span class="property-value" aria-labelledby="dni-label"><g:fieldValue bean="${empleadoFamiliarInstance}" field="dni"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.cuil}">
				<li class="fieldcontain">
					<span id="cuil-label" class="property-label"><g:message code="empleadoFamiliar.cuil.label" default="Cuil" /></span>
					
						<span class="property-value" aria-labelledby="cuil-label"><g:fieldValue bean="${empleadoFamiliarInstance}" field="cuil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.parentesco}">
				<li class="fieldcontain">
					<span id="parentesco-label" class="property-label"><g:message code="empleadoFamiliar.parentesco.label" default="Parentesco" /></span>
					
						<span class="property-value" aria-labelledby="parentesco-label"><g:fieldValue bean="${empleadoFamiliarInstance}" field="parentesco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.discapacidad}">
				<li class="fieldcontain">
					<span id="discapacidad-label" class="property-label"><g:message code="empleadoFamiliar.discapacidad.label" default="Discapacidad" /></span>
					
						<span class="property-value" aria-labelledby="discapacidad-label"><g:formatBoolean boolean="${empleadoFamiliarInstance?.discapacidad}" true="SI" false="NO" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.cad}">
				<li class="fieldcontain">
					<span id="cad-label" class="property-label"><g:message code="empleadoFamiliar.cad.label" default="Cad" /></span>
					
						<span class="property-value" aria-labelledby="cad-label"><g:formatBoolean boolean="${empleadoFamiliarInstance?.cad}" true="SI" false="NO" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="empleadoFamiliar.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${empleadoFamiliarInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoFamiliarInstance?.empleado}">
				<li class="fieldcontain">
					<span id="empleado-label" class="property-label"><g:message code="empleadoFamiliar.empleado.label" default="Empleado" /></span>
					
						<span class="property-value" aria-labelledby="empleado-label"><g:link controller="empleado" action="show" id="${empleadoFamiliarInstance?.empleado?.id}">${empleadoFamiliarInstance?.empleado?.nombre.encodeAsHTML()} ${empleadoFamiliarInstance?.empleado?.apellido.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${empleadoFamiliarInstance?.id}" />
					<g:link class="edit" action="edit" id="${empleadoFamiliarInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
