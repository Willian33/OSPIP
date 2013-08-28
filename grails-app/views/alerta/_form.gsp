<%@ page import="com.ospip.Alerta" %>

<script src="${resource(dir: 'js', file: 'jquery-1.10.1.min.js')}" type="text/javascript"></script>
<script src="${resource(dir: 'js', file: 'efectosJquery.js')}" type="text/javascript"></script>

<div class="fieldcontain ${hasErrors(bean: alertaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alerta.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alertaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alertaInstance, field: 'motivo', 'error')} required">
	<label for="motivo">
		<g:message code="alerta.motivo.label" default="Motivo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id = "selectMotivoAlerta" name="motivo" from="${alertaInstance.constraints.motivo.inList}" required="" value="${alertaInstance?.motivo}" valueMessagePrefix="alerta.motivo"/>
</div>

<div id = "contenedorEmpresaAlerta" class="fieldcontain ${hasErrors(bean: alertaInstance, field: 'empresaInspeccion', 'error')}" style="display: none;" >
	<label for="empresaInspeccion">
		<g:message code="alerta.empresaInspeccion.label" default="Empresa" />
	</label>
	<g:select id="empresaInspeccion" name="empresaInspeccion.id" from="${com.ospip.Empresa.list()}" optionKey="id" optionValue="razonSocial" value="${alertaInstance?.empresaInspeccion?.id}" class="many-to-one" noSelection="${['null':'Seleccione una Empresa']}" />
</div>

<div id= "contenedorDescripcionMotivoAlerta" class="fieldcontain ${hasErrors(bean: alertaInstance, field: 'descripcionMotivo', 'error')} style="display: none;" ">
	<label for="descripcionMotivo">
		<g:message code="alerta.descripcionMotivo.label" default="Descripción Motivo" />
		
	</label>
	<g:textField name="descripcionMotivo" value="${alertaInstance?.descripcionMotivo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alertaInstance, field: 'fechaYHoraAlerta', 'error')} required">
	<label for="fechaYHoraAlerta">
		<g:message code="alerta.fechaYHoraAlerta.label" default="Fecha y Hora Alerta" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaYHoraAlerta" precision="minute" relativeYears = "[0..5]" value="${alertaInstance?.fechaYHoraAlerta}" default="none" noSelection="['':'-']" />
</div>


