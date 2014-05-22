<%@ page import="proyecto1.Escuela" %>



<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="escuela.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${escuelaInstance?.apellidoMaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="escuela.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" value="${escuelaInstance?.apellidoPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="escuela.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${escuelaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'passwd', 'error')} ">
	<label for="passwd">
		<g:message code="escuela.passwd.label" default="Passwd" />
		
	</label>
	<g:textField name="passwd" value="${escuelaInstance?.passwd}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: escuelaInstance, field: 'usuario', 'error')} ">
	<label for="usuario">
		<g:message code="escuela.usuario.label" default="Usuario" />
		
	</label>
	<g:textField name="usuario" value="${escuelaInstance?.usuario}"/>

</div>

