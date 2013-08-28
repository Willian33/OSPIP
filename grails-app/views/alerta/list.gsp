<%@ page import="com.ospip.Alerta" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alerta.label', default: 'Alerta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-alerta" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-alerta" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'alerta.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="motivo" title="${message(code: 'alerta.motivo.label', default: 'Motivo')}" />
					
						<g:sortableColumn property="descripcionMotivo" title="${message(code: 'alerta.descripcionMotivo.label', default: 'Descripción Motivo')}" />
						
						<g:sortableColumn property="empresaInspeccion" title="${message(code: 'alerta.empresaInspeccion.label', default: 'Empresa a Visitar')}" />
						
						<g:sortableColumn property="fechaYHoraAlerta" title="${message(code: 'alerta.fechaYHoraAlerta.label', default: 'Fecha')}" />
						
						<g:sortableColumn property="fechaYHoraAlerta" title="${message(code: 'alerta.fechaYHoraAlerta.label', default: 'Hora')}" />
						
						<th>Acción</th>
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${alertaInstanceList}" status="i" var="alertaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alertaInstance.id}">${fieldValue(bean: alertaInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: alertaInstance, field: "motivo")}</td>
					
						<g:if test="${alertaInstanceList?.descripcionMotivo}">
							<td>${fieldValue(bean: alertaInstance, field: "descripcionMotivo")}</td>
						</g:if>
						
						<g:if test="${alertaInstanceList?.empresaInspeccion}">
							<td>${fieldValue(bean: alertaInstance, field: "empresaInspeccion.razonSocial")}</td>
						</g:if>
						
						<td><g:formatDate date="${alertaInstance.fechaYHoraAlerta}" type="date" style="long" /></td>
					
						<td><g:formatDate date="${alertaInstance.fechaYHoraAlerta}" type="time" /></td>
					
						<td><div id = "btnAgregar">Agregar</div></td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alertaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
