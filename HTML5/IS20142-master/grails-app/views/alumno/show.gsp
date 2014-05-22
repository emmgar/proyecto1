
<%@ page import="proyecto1.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-alumno" class="content scaffold-show" role="main">
			<!--<h1><g:message code="default.show.label" args="[entityName]" /></h1>-->
            <h1>Bienvenido ${alumnoInstance.nombre} ${alumnoInstance.apPaterno} ${alumnoInstance.apMaterno}</h1>
			<g:if test="${flash.message}">
              <h2 style="color: #09F; text-align: center;"><div class="message" role="status">${flash.message}</div></h2>
			</g:if>
			<ol class="property-list alumno">
			
				<g:if test="${alumnoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="alumno.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:fieldValue bean="${alumnoInstance}" field="usuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.passwd}">
				<li class="fieldcontain">
					<span id="passwd-label" class="property-label"><g:message code="alumno.passwd.label" default="Passwd" /></span>
					
						<span class="property-value" aria-labelledby="passwd-label"><g:fieldValue bean="${alumnoInstance}" field="passwd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="alumno.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${alumnoInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="alumno.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${alumnoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apPaterno}">
				<li class="fieldcontain">
					<span id="apPaterno-label" class="property-label"><g:message code="alumno.apPaterno.label" default="Ap Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apPaterno-label"><g:fieldValue bean="${alumnoInstance}" field="apPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apMaterno}">
				<li class="fieldcontain">
					<span id="apMaterno-label" class="property-label"><g:message code="alumno.apMaterno.label" default="Ap Materno" /></span>
					
						<span class="property-value" aria-labelledby="apMaterno-label"><g:fieldValue bean="${alumnoInstance}" field="apMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.fecha_nac}">
				<li class="fieldcontain">
					<span id="fecha_nac-label" class="property-label"><g:message code="alumno.fecha_nac.label" default="Fechanac" /></span>
					
						<span class="property-value" aria-labelledby="fecha_nac-label"><g:formatDate date="${alumnoInstance?.fecha_nac}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.correo}">
				<li class="fieldcontain">
					<span id="correo-label" class="property-label"><g:message code="alumno.correo.label" default="Correo" /></span>
					
						<span class="property-value" aria-labelledby="correo-label"><g:fieldValue bean="${alumnoInstance}" field="correo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:alumnoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${alumnoInstance}"><g:message code="default.button.edit2.label" default="Actualizar Datos" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete2.label', default: 'Darse de Baja')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
                
                <div class="row-fluid">
                    <div class="span12">
                      <div class="nav pull-right text-right" style="margin-bottom: 0px;">
                        <g:solicitudCurso />
                        
                        
                        
                        <p><g:link action="downloadConstanciaPDF" controller="alumno">descargar Constancia</g:link></p>
                      </div>
                    </div>
                  </div>
                
	</body>
</html>
