<%@ page import="com.ospip.Empresa" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empresa" class="content scaffold-list" role="main">
			<h1>Listado de Empresas</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="razonSocial" title="${message(code: 'empresa.razonSocial.label', default: 'Razón Social')}" />
					
						<g:sortableColumn property="cuit" title="${message(code: 'empresa.cuit.label', default: 'Cuit')}" />
					
						<g:sortableColumn property="padron" title="${message(code: 'empresa.padron.label', default: 'Padrón')}" />
					
						<g:sortableColumn property="telefonoComercial" title="${message(code: 'empresa.telefonoComercial.label', default: 'Teléfono Comercial')}" />
					
						<g:sortableColumn property="provincia" title="${message(code: 'empresa.provincia.label', default: 'Provincia')}" />
					
						<g:sortableColumn property="localidad" title="${message(code: 'empresa.localidad.label', default: 'Localidad')}" />
						
						<g:sortableColumn property="direccionCircuito" title="${message(code: 'empresa.circuito.label', default: 'Circuito')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empresaInstanceList}" status="i" var="empresaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empresaInstance.id}">${fieldValue(bean: empresaInstance, field: "razonSocial")}</g:link></td>
					
						<td>${fieldValue(bean: empresaInstance, field: "cuit")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "padron")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "telefonoComercial")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "provincia.nombre")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "localidad.nombre")}</td>
						
						<td>${fieldValue(bean: empresaInstance, field: "direccionCircuito")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empresaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
