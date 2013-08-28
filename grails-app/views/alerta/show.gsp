
<%@ page import="com.ospip.Alerta" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alerta.label', default: 'Alerta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-alerta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-alerta" class="content scaffold-show" role="main">
			<h1>Alerta: ${alertaInstance?.nombre}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list alerta">
			
				<g:if test="${alertaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="alerta.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${alertaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alertaInstance?.motivo}">
				<li class="fieldcontain">
					<span id="motivo-label" class="property-label"><g:message code="alerta.motivo.label" default="Motivo" /></span>
					
						<span class="property-value" aria-labelledby="motivo-label"><g:fieldValue bean="${alertaInstance}" field="motivo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alertaInstance?.descripcionMotivo}">
				<li class="fieldcontain">
					<span id="descripcionMotivo-label" class="property-label"><g:message code="alerta.descripcionMotivo.label" default="Descripción Motivo" /></span>
					
						<span class="property-value" aria-labelledby="descripcionMotivo-label"><g:fieldValue bean="${alertaInstance}" field="descripcionMotivo"/></span>
					
				</li>
				</g:if>
							
				<g:if test="${alertaInstance?.empresaInspeccion}">
				<li class="fieldcontain">
					<span id="empresaInspeccion-label" class="property-label"><g:message code="alerta.empresaInspeccion.label" default="Empresa a Visitar" /></span>
					
						<span class="property-value" aria-labelledby="empresaInspeccion-label"><g:link controller="empresa" action="show" id="${alertaInstance?.empresaInspeccion?.id}">${alertaInstance?.empresaInspeccion?.razonSocial.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${alertaInstance?.fechaYHoraAlerta}">
				<li class="fieldcontain">
					<span id="fechaYHoraAlerta-label" class="property-label"><g:message code="alerta.fechaYHoraAlerta.label" default="Fecha de Visita" /></span>
					
						<span class="property-value" aria-labelledby="fechaYHoraAlerta-label"><g:formatDate date="${alertaInstance?.fechaYHoraAlerta}" type="date" style="long" /></span>
					
				</li>
				</g:if>
				
				<g:if test="${alertaInstance?.fechaYHoraAlerta}">
				<li class="fieldcontain">
					<span id="fechaYHoraAlerta-label" class="property-label"><g:message code="alerta.fechaYHoraAlerta.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="fechaYHoraAlerta-label"><g:formatDate date="${alertaInstance?.fechaYHoraAlerta}" type="time" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alertaInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="alerta.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${alertaInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alertaInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="alerta.fechaCreacion.label" default="Fecha Creación" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${alertaInstance?.fechaCreacion}" type="date" style="long" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alertaInstance?.usuarioCreador}">
				<li class="fieldcontain">
					<span id="usuarioCreador-label" class="property-label"><g:message code="alerta.usuarioCreador.label" default="Usuario Creador" /></span>
					
						<span class="property-value" aria-labelledby="usuarioCreador-label">${alertaInstance?.usuarioCreador?.username.encodeAsHTML()}</span>
					
				</li>
				</g:if>
				
				<g:if test="${alertaInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="alerta.usuario.label" default="Usuario" /></span>
					
						<g:each in="${alertaInstance.usuario}" var="u">
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${alertaInstance?.id}" />
					<g:link class="edit" action="edit" id="${alertaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
