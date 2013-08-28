
<%@ page import="com.ospip.Inspeccion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inspeccion.label', default: 'Inspeccion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-inspeccion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-inspeccion" class="content scaffold-list" role="main" style = "margin-top:200px;">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn style = "width: 200px; overflow: hidden;" property="condicionesDeTrabajo" title="${message(code: 'inspeccion.condicionesDeTrabajo.label', default: 'Condiciones De Trabajo')}" />
					
						<g:sortableColumn property="categoriaDeTrabajadores" title="${message(code: 'inspeccion.categoriaDeTrabajadores.label', default: 'Categoria De Trabajadores')}" />
					
						<g:sortableColumn property="bonificacion" title="${message(code: 'inspeccion.bonificacion.label', default: 'Bonificacion')}" />
					
						<g:sortableColumn property="vestimentaDeTrabajo" title="${message(code: 'inspeccion.vestimentaDeTrabajo.label', default: 'Vestimenta De Trabajo')}" />
					
						<g:sortableColumn property="otros" title="${message(code: 'inspeccion.otros.label', default: 'Otros')}" />
						
						<g:sortableColumn property="usuario" title="${message(code: 'inspeccion.usuario.label', default: 'Inspector')}" />
						
						<g:sortableColumn property="fecha" title="${message(code: 'inspeccion.fecha.label', default: 'Fecha')}" />
						
						<g:sortableColumn property="fecha" title="${message(code: 'inspeccion.fecha.label', default: 'Hora')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${inspeccionInstanceList}" status="i" var="inspeccionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<g:set var="condTrabajoCorto" value="${fieldValue(bean: inspeccionInstance, field: "condicionesDeTrabajo")}" />
           				<g:if test="${condTrabajoCorto.size() > 40}"><g:set var="condTrabajoCorto" value="${condTrabajoCorto[0..40] + '...'}" /></g:if>
						
						<td><div style = "width: 200px; overflow: hidden;"><g:link action="show" id="${inspeccionInstance.id}">${condTrabajoCorto}</g:link></div></td>
					
						<td>${fieldValue(bean: inspeccionInstance, field: "categoriaDeTrabajadores")}</td>
					
						<td>${fieldValue(bean: inspeccionInstance, field: "bonificacion")}</td>
					
						<td>${fieldValue(bean: inspeccionInstance, field: "vestimentaDeTrabajo")}</td>
					
						<td>${fieldValue(bean: inspeccionInstance, field: "otros")}</td>
						
						<td>${fieldValue(bean: inspeccionInstance, field: "usuario.username")}</td>
						
						<td><g:formatDate format="dd-mm-yyyy" date="${inspeccionInstance.fecha}" type="date" /></td>
						
						<td><g:formatDate format="dd-mm-yyyy" date="${inspeccionInstance.fecha}" type="time" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${inspeccionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
