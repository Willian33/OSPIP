<%@ page import="com.ospip.Usuario" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-usuario" class="content scaffold-edit" role="main">
			<h1>Perfil <sec:loggedInUserInfo field="username" /></h1>
			<g:hasErrors bean="${usuarioInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${usuarioInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${usuarioInstance?.id}" />
				<g:hiddenField name="version" value="${usuarioInstance?.version}" />
				<fieldset class="form">
					<g:render template="formPerfil"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="actualizarPerfil" value="${message(code: 'default.button.update.label', default: 'Actualizar')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
