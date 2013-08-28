<%@ page import="com.ospip.Empresa" %>
<%@ page contentType="text/html; UTF-8" %>

<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<script src="${resource(dir: 'js', file: 'jquery-1.10.1.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js', file: 'efectosJquery.js')}" type="text/javascript"></script>
	</head>
	<body>
		<a href="#show-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empresa" class="content scaffold-show" role="main">
			<h1>${empresaInstance?.razonSocial}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empresa">
			
				<g:if test="${empresaInstance?.razonSocial}">
				<li class="fieldcontain">
					<span id="razonSocial-label" class="property-label"><g:message code="empresa.razonSocial.label" default="Razón Social" /></span>
					
						<span class="property-value" aria-labelledby="razonSocial-label"><g:fieldValue bean="${empresaInstance}" field="razonSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.cuit}">
				<li class="fieldcontain">
					<span id="cuit-label" class="property-label"><g:message code="empresa.cuit.label" default="Cuit" /></span>
					
						<span class="property-value" aria-labelledby="cuit-label"><g:fieldValue bean="${empresaInstance}" field="cuit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.padron}">
				<li class="fieldcontain">
					<span id="padron-label" class="property-label"><g:message code="empresa.padron.label" default="Padrón" /></span>
					
						<span class="property-value" aria-labelledby="padron-label"><g:fieldValue bean="${empresaInstance}" field="padron"/></span>
					
				</li>
				</g:if>				
			
				<g:if test="${empresaInstance?.telefonoComercial}">
				<li class="fieldcontain">
					<span id="telefonoComercial-label" class="property-label"><g:message code="empresa.telefonoComercial.label" default="Teléfono Comercial" /></span>
					
						<span class="property-value" aria-labelledby="telefonoComercial-label"><g:fieldValue bean="${empresaInstance}" field="telefonoComercial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.provincia}">
				<li class="fieldcontain">
					<span id="provincia-label" class="property-label"><g:message code="empresa.provincia.label" default="Provincia" /></span>
					
						<span class="property-value" aria-labelledby="provincia-label"><g:fieldValue bean="${empresaInstance}" field="provincia.nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.localidad}">
				<li class="fieldcontain">
					<span id="localidad-label" class="property-label"><g:message code="empresa.localidad.label" default="Localidad" /></span>
					
						<span class="property-value" aria-labelledby="localidad-label"><g:fieldValue bean="${empresaInstance}" field="localidad.nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.circunscripcion}">
				<li class="fieldcontain">
					<span id="circunscripcion-label" class="property-label"><g:message code="empresa.circunscripcion.label" default="Circunscripción" /></span>
					
						<span class="property-value" aria-labelledby="circunscripcion-label"><g:fieldValue bean="${empresaInstance}" field="circunscripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.codigoPostal}">
				<li class="fieldcontain">
					<span id="codigoPostal-label" class="property-label"><g:message code="empresa.codigoPostal.label" default="Código Postal" /></span>
					
						<span class="property-value" aria-labelledby="codigoPostal-label"><g:fieldValue bean="${empresaInstance}" field="codigoPostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.direccionCalle}">
				<li class="fieldcontain">
					<span id="direccionCalle-label" class="property-label"><g:message code="empresa.direccionCalle.label" default="Dirección Calle" /></span>
					
						<span class="property-value" aria-labelledby="direccionCalle-label"><g:fieldValue bean="${empresaInstance}" field="direccionCalle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.direccionNumero}">
				<li class="fieldcontain">
					<span id="direccionNumero-label" class="property-label"><g:message code="empresa.direccionNumero.label" default="Dirección N°" /></span>
					
						<span class="property-value" aria-labelledby="direccionNumero-label"><g:fieldValue bean="${empresaInstance}" field="direccionNumero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.direccionCasa}">
				<li class="fieldcontain">
					<span id="direccionCasa-label" class="property-label"><g:message code="empresa.direccionCasa.label" default="Casa" /></span>
					
						<span class="property-value" aria-labelledby="direccionCasa-label"><g:fieldValue bean="${empresaInstance}" field="direccionCasa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.direccionCircuito}">
				<li class="fieldcontain">
					<span id="direccionCircuito-label" class="property-label"><g:message code="empresa.direccionCircuito.label" default="Circuito" /></span>
					
						<span class="property-value" aria-labelledby="direccionCircuito-label"><g:fieldValue bean="${empresaInstance}" field="direccionCircuito"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.direccionManzana}">
				<li class="fieldcontain">
					<span id="direccionManzana-label" class="property-label"><g:message code="empresa.direccionManzana.label" default="Manzana" /></span>
					
						<span class="property-value" aria-labelledby="direccionManzana-label"><g:fieldValue bean="${empresaInstance}" field="direccionManzana"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.direccionEdificio}">
				<li class="fieldcontain">
					<span id="direccionEdificio-label" class="property-label"><g:message code="empresa.direccionEdificio.label" default="Edificio" /></span>
					
						<span class="property-value" aria-labelledby="direccionEdificio-label"><g:fieldValue bean="${empresaInstance}" field="direccionEdificio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.direccionSeccion}">
				<li class="fieldcontain">
					<span id="direccionSeccion-label" class="property-label"><g:message code="empresa.direccionSeccion.label" default="Sección" /></span>
					
						<span class="property-value" aria-labelledby="direccionSeccion-label"><g:fieldValue bean="${empresaInstance}" field="direccionSeccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.tipoEmpleador}">
				<li class="fieldcontain">
					<span id="tipoEmpleador-label" class="property-label"><g:message code="empresa.tipoEmpleador.label" default="Tipo Empleador" /></span>
					
						<span class="property-value" aria-labelledby="tipoEmpleador-label"><g:fieldValue bean="${empresaInstance}" field="tipoEmpleador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="empresa.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${empresaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadosDelegados}">
				<li class="fieldcontain">
					<span id="empleado-label" class="property-label"><g:message code="empresa.empleado.label" default="Delegados" /></span>
						<span class="property-value" id = "linkDelegados"> ${cantEmpleadosDelegados} </span>
						
						<span id = "contenedorDelegados" style="display: none;">
							<g:each in="${empleadosDelegados}" var="e">
								<span class="property-value" aria-labelledby="empleado-label"><g:link controller="empleado" action="show" id="${e.id}">${e?.nombre.encodeAsHTML() + " " + e?.apellido.encodeAsHTML()}</g:link></span>
							</g:each>
						</span>
					
				</li>
				</g:if>
				
				<g:if test="${empleadosNoDelegados}">
				<li class="fieldcontain">
					<span id="empleado-label" class="property-label"><g:message code="empresa.empleado.label" default="Empleados" /></span>
						<span class="property-value" id = "linkNoDelegados"> ${cantEmpleadosNoDelegados} </span>
						
						<span id = "contenedorNoDelegados" style="display: none;">
							<g:each in="${empleadosNoDelegados}" var="e">
								<span class="property-value" aria-labelledby="empleado-label"><g:link controller="empleado" action="show" id="${e.id}">${e?.nombre.encodeAsHTML() + " " + e?.apellido.encodeAsHTML()}</g:link></span>
							</g:each>
						</span>
					
				</li>
				</g:if>
				
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${empresaInstance?.id}" />
					<g:link class="edit" action="edit" id="${empresaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
