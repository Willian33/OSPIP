
<%@ page import="com.ospip.Empleado" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'empleado.css')}" type="text/css">
	</head>
	<body>
		
		<div id="list-empleado" class="content scaffold-list" role="main" style="margin-top:200px;">
			<h1>Listado de Empleados</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'empleado.apellido.label', default: 'Apellido')}" />
						
						<g:sortableColumn property="cuil" title="${message(code: 'empleado.cuil.label', default: 'Cuil')}" />
					
						<g:sortableColumn property="fechaNacimiento" title="${message(code: 'empleado.fechaNacimiento.label', default: 'Fecha Nacimiento')}" />
					
						<g:sortableColumn property="paisOrigen" title="${message(code: 'empleado.paisOrigen.label', default: 'País Origen')}" id="anchopais" />
						
						<g:sortableColumn property="empresa" title="${message(code: 'empleado.empresa.label', default: 'Empresa')}" id="anchoempresa" />
						
						<g:sortableColumn property="delegado" title="${message(code: 'empleado.delegado.label', default: 'Delegado')}" id="anchodelegado" />
						
						<g:sortableColumn property="fechaInicioMandato" title="${message(code: 'empleado.fechaInicioMandato.label', default: 'Inicio Mandato')}" id="anchoimandato" />
						
						<g:sortableColumn property="fechaFinMandato" title="${message(code: 'empleado.fechaFinMandato.label', default: 'Fin Mandato')}" id="anchofmandato" />
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${empleadoInstanceList}" status="i" var="empleadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empleadoInstance.id}">${fieldValue(bean: empleadoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "apellido")}</td>
						
						<td>${fieldValue(bean: empleadoInstance, field: "cuil")}</td>
					
						<td><g:formatDate date="${empleadoInstance.fechaNacimiento}" type="date" style="medium" /></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "paisOrigen.nombre")}</td>
						
						<td>${fieldValue(bean: empleadoInstance, field: "empresa.razonSocial")}</td>
						
						<td><g:formatBoolean boolean="${empleadoInstance?.delegado}" true="SI" false="NO"/></td>
						
						<td><g:if test="${fieldValue(bean: empleadoInstance, field: "fechaInicioMandato")}"><g:formatDate date="${empleadoInstance.fechaInicioMandato}" type="date" style="medium"/></g:if> <g:else> - </g:else> </td>
						
						<td><g:if test="${fieldValue(bean: empleadoInstance, field: "fechaFinMandato")}"><g:formatDate date="${empleadoInstance.fechaFinMandato}" type="date" style="medium"/> </g:if> <g:else> - </g:else> </td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empleadoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
