
<%@ page import="com.ospip.EmpleadoFamiliar" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleadoFamiliar.label', default: 'EmpleadoFamiliar')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-empleadoFamiliar" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empleadoFamiliar" class="content scaffold-list" role="main">
			<h1>Lista de Familiares</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numeroBeneficiarioObraSocial" title="${message(code: 'empleadoFamiliar.numeroBeneficiarioObraSocial.label', default: 'N° Beneficiario')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'empleadoFamiliar.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'empleadoFamiliar.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="sexo" title="${message(code: 'empleadoFamiliar.sexo.label', default: 'Sexo')}" />
					
						<g:sortableColumn property="fechaNacimiento" title="${message(code: 'empleadoFamiliar.fechaNacimiento.label', default: 'Fecha Nacimiento')}" />
					
						<g:sortableColumn property="tipoDocumento" title="${message(code: 'empleadoFamiliar.tipoDocumento.label', default: 'Tipo Documento')}" />
						
						<g:sortableColumn property="dni" title="${message(code: 'empleadoFamiliar.dni.label', default: 'N° Documento')}" />
						
						<g:sortableColumn property="empleado" title="${message(code: 'empleadoFamiliar.empleado.label', default: 'Familiar')}" />
						
						<g:sortableColumn property="parentesco" title="${message(code: 'empleadoFamiliar.parentesco.label', default: 'Parentesco')}" />
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${empleadoFamiliarInstanceList}" status="i" var="empleadoFamiliarInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empleadoFamiliarInstance.id}">${fieldValue(bean: empleadoFamiliarInstance, field: "numeroBeneficiarioObraSocial")}</g:link></td>
						
						<td>${fieldValue(bean: empleadoFamiliarInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: empleadoFamiliarInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: empleadoFamiliarInstance, field: "sexo")}</td>
					
						<td><g:formatDate date="${empleadoFamiliarInstance.fechaNacimiento}" type="date" style="medium" /></td>
					
						<td>${fieldValue(bean: empleadoFamiliarInstance, field: "tipoDocumento")}</td>
						
						<td>${fieldValue(bean: empleadoFamiliarInstance, field: "dni")}</td>
						
						<td><g:link controller = "empleado" action="show" id="${empleadoFamiliarInstance.empleado.id}"> ${fieldValue(bean: empleadoFamiliarInstance, field: "empleado.nombre")} ${fieldValue(bean: empleadoFamiliarInstance, field: "empleado.apellido")} </g:link> </td>
					
						<td>${fieldValue(bean: empleadoFamiliarInstance, field: "parentesco")}</td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empleadoFamiliarInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
