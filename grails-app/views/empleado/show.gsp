<%@ page import="com.ospip.Empleado" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<script src="${resource(dir: 'js', file: 'jquery-1.10.1.min.js')}" type="text/javascript"></script>
		<script src="${resource(dir: 'js', file: 'efectosJquery.js')}" type="text/javascript"></script>
	</head>
	<body>
		<a href="#show-empleado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empleado" class="content scaffold-show" role="main">
			<h1>${empleadoInstance?.nombre + " " + empleadoInstance?.apellido}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empleado">
			
				<g:if test="${empleadoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="empleado.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${empleadoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="empleado.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${empleadoInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.cuil}">
				<li class="fieldcontain">
					<span id="cuil-label" class="property-label"><g:message code="empleado.cuil.label" default="Cuil" /></span>
					
						<span class="property-value" aria-labelledby="cuil-label"><g:fieldValue bean="${empleadoInstance}" field="cuil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="empleado.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${empleadoInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="empleado.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${empleadoInstance?.fechaNacimiento}" type="date" style="long" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.paisOrigen}">
				<li class="fieldcontain">
					<span id="paisOrigen-label" class="property-label"><g:message code="empleado.paisOrigen.label" default="País Origen" /></span>
					
						<span class="property-value" aria-labelledby="paisOrigen-label"><g:fieldValue bean="${empleadoInstance}" field="paisOrigen.nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.tipoDocumento}">
				<li class="fieldcontain">
					<span id="tipoDocumento-label" class="property-label"><g:message code="empleado.tipoDocumento.label" default="Tipo Documento" /></span>
					
						<span class="property-value" aria-labelledby="tipoDocumento-label"><g:fieldValue bean="${empleadoInstance}" field="tipoDocumento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.dni}">
				<li class="fieldcontain">
					<span id="dni-label" class="property-label"><g:message code="empleado.dni.label" default="N° Documento" /></span>
					
						<span class="property-value" aria-labelledby="dni-label"><g:fieldValue bean="${empleadoInstance}" field="dni"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="empleado.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${empleadoInstance}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.domicilioCalle}">
				<li class="fieldcontain">
					<span id="domicilioCalle-label" class="property-label"><g:message code="empleado.domicilioCalle.label" default="Dirección Calle" /></span>
					
						<span class="property-value" aria-labelledby="domicilioCalle-label"><g:fieldValue bean="${empleadoInstance}" field="domicilioCalle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.domicilioNumero}">
				<li class="fieldcontain">
					<span id="domicilioNumero-label" class="property-label"><g:message code="empleado.domicilioNumero.label" default="Dirección N°" /></span>
					
						<span class="property-value" aria-labelledby="domicilioNumero-label"><g:fieldValue bean="${empleadoInstance}" field="domicilioNumero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.domicilioPiso}">
				<li class="fieldcontain">
					<span id="domicilioPiso-label" class="property-label"><g:message code="empleado.domicilioPiso.label" default="Piso N°" /></span>
					
						<span class="property-value" aria-labelledby="domicilioPiso-label"><g:fieldValue bean="${empleadoInstance}" field="domicilioPiso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.domicilioDepartamento}">
				<li class="fieldcontain">
					<span id="domicilioDepartamento-label" class="property-label"><g:message code="empleado.domicilioDepartamento.label" default="Departamento" /></span>
					
						<span class="property-value" aria-labelledby="domicilioDepartamento-label"><g:fieldValue bean="${empleadoInstance}" field="domicilioDepartamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.codigoPostal}">
				<li class="fieldcontain">
					<span id="codigoPostal-label" class="property-label"><g:message code="empleado.codigoPostal.label" default="Código Postal" /></span>
					
						<span class="property-value" aria-labelledby="codigoPostal-label"><g:fieldValue bean="${empleadoInstance}" field="codigoPostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.provincia}">
				<li class="fieldcontain">
					<span id="provincia-label" class="property-label"><g:message code="empleado.provincia.label" default="Provincia" /></span>
					
						<span class="property-value" aria-labelledby="provincia-label"><g:fieldValue bean="${empleadoInstance}" field="provincia.nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.localidad}">
				<li class="fieldcontain">
					<span id="localidad-label" class="property-label"><g:message code="empleado.localidad.label" default="Localidad" /></span>
					
						<span class="property-value" aria-labelledby="localidad-label"><g:fieldValue bean="${empleadoInstance}" field="localidad.nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.telefonoParticular}">
				<li class="fieldcontain">
					<span id="telefonoParticular-label" class="property-label"><g:message code="empleado.telefonoParticular.label" default="Teléfono Particular" /></span>
					
						<span class="property-value" aria-labelledby="telefonoParticular-label"><g:fieldValue bean="${empleadoInstance}" field="telefonoParticular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.telefonoLaboral}">
				<li class="fieldcontain">
					<span id="telefonoLaboral-label" class="property-label"><g:message code="empleado.telefonoLaboral.label" default="Teléfono Laboral" /></span>
					
						<span class="property-value" aria-labelledby="telefonoLaboral-label"><g:fieldValue bean="${empleadoInstance}" field="telefonoLaboral"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.telefonoCelular}">
				<li class="fieldcontain">
					<span id="telefonoCelular-label" class="property-label"><g:message code="empleado.telefonoCelular.label" default="Teléfono Celular" /></span>
					
						<span class="property-value" aria-labelledby="telefonoCelular-label"><g:fieldValue bean="${empleadoInstance}" field="telefonoCelular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="empleado.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${empleadoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.cuotaSindical}">
				<li class="fieldcontain">
					<span id="cuotaSindical-label" class="property-label"><g:message code="empleado.cuotaSindical.label" default="Cuota Sindical" /></span>
					
						<span class="property-value" aria-labelledby="cuotaSindical-label"><g:formatBoolean boolean="${empleadoInstance?.cuotaSindical}" true="SI" false="NO" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.numeroBeneficiarioSindical}">
				<li class="fieldcontain">
					<span id="numeroBeneficiarioSindical-label" class="property-label"><g:message code="empleado.numeroBeneficiarioSindical.label" default="N° Beneficiario Sindical" /></span>
					
						<span class="property-value" aria-labelledby="numeroBeneficiarioSindical-label"><g:fieldValue bean="${empleadoInstance}" field="numeroBeneficiarioSindical"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.obraSocial}">
				<li class="fieldcontain">
					<span id="obraSocial-label" class="property-label"><g:message code="empleado.obraSocial.label" default="Obra Social" /></span>
					
						<span class="property-value" aria-labelledby="obraSocial-label"><g:formatBoolean boolean="${empleadoInstance?.obraSocial}" true="SI" false="NO" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.numeroBeneficiarioObraSocial}">
				<li class="fieldcontain">
					<span id="numeroBeneficiarioObraSocial-label" class="property-label"><g:message code="empleado.numeroBeneficiarioObraSocial.label" default="N° Beneficiario Obra Social" /></span>
					
						<span class="property-value" aria-labelledby="numeroBeneficiarioObraSocial-label"><g:fieldValue bean="${empleadoInstance}" field="numeroBeneficiarioObraSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.discapacidad}">
				<li class="fieldcontain">
					<span id="discapacidad-label" class="property-label"><g:message code="empleado.discapacidad.label" default="Discapacidad" /></span>
					
						<span class="property-value" aria-labelledby="discapacidad-label"><g:formatBoolean boolean="${empleadoInstance?.discapacidad}" true="SI" false="NO" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.cad}">
				<li class="fieldcontain">
					<span id="cad-label" class="property-label"><g:message code="empleado.cad.label" default="Cad" /></span>
					
						<span class="property-value" aria-labelledby="cad-label"><g:formatBoolean boolean="${empleadoInstance?.cad}" true="SI" false="NO" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.estudiosCursados}">
				<li class="fieldcontain">
					<span id="estudiosCursados-label" class="property-label"><g:message code="empleado.estudiosCursados.label" default="Estudios Cursados" /></span>
					
						<span class="property-value" aria-labelledby="estudiosCursados-label"><g:fieldValue bean="${empleadoInstance}" field="estudiosCursados"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.observaciones}">
				<li class="fieldcontain">
					<span id="observaciones-label" class="property-label"><g:message code="empleado.observaciones.label" default="Observaciones" /></span>
					
						<span class="property-value" aria-labelledby="observaciones-label"><g:fieldValue bean="${empleadoInstance}" field="observaciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="empleado.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:link controller="empresa" action="show" id="${empleadoInstance?.empresa?.id}">${empleadoInstance?.empresa?.razonSocial.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.familiar}">
				<li class="fieldcontain">
					<span id="familiar-label" class="property-label"><g:message code="empleado.familiar.label" default="Familiar" /></span>
						<span class="property-value" id = "linkFamiliares"> ${empleadoInstance?.familiar?.size()} </span>
						
						<span id = "contenedorFamiliares" style="display: none;">
							<g:each in="${empleadoInstance.familiar}" var="f">
							<span class="property-value" aria-labelledby="familiar-label"><g:link controller="empleadoFamiliar" action="show" id="${f.id}">${f?.nombre.encodeAsHTML()} ${f?.apellido.encodeAsHTML()}</g:link></span>
							</g:each>
						</span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${empleadoInstance?.id}" />
					<g:link class="edit" action="edit" id="${empleadoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
