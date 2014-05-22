
<%@ page import="proyecto1.Escuela" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main">
  <g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
  
<body>
  <div id="show-profesor" class="content scaffold-show" role="main">
    <h1><g:message code="Profesor:" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list profesor">
      <g:if test="${profesorInstance?.nombres}">
        <li class="fieldcontain">
          <span id="nombres-label" class="property-label">
            <g:message code="profesor.nombres.label" default="Nombres" />
          </span>			
          <span class="property-value" aria-labelledby="nombres-label">
            <g:fieldValue bean="${profesorInstance}" field="nombres"/>
          </span>
		</li>
      </g:if>
			
      <g:if test="${profesorInstance?.apellidoMaterno}">
        <li class="fieldcontain">
          <span id="apellidoMaterno-label" class="property-label">
            <g:message code="profesor.apellidoMaterno.label" default="Apellido Materno" />
          </span>
          <span class="property-value" aria-labelledby="apellidoMaterno-label">
            <g:fieldValue bean="${profesorInstance}" field="apellidoMaterno"/>
          </span>
		</li>
      </g:if>
	
      <g:if test="${profesorInstance?.apellidoPaterno}">
        <li class="fieldcontain">
          <span id="apellidoPaterno-label" class="property-label">
            <g:message code="profesor.apellidoPaterno.label" default="Apellido Paterno" />
          </span>
          <span class="property-value" aria-labelledby="apellidoPaterno-label">
            <g:fieldValue bean="${profesorInstance}" field="apellidoPaterno"/>
          </span>
        </li>
      </g:if>
			
      <g:if test="${profesorInstance?.grado_academico}">
        <li class="fieldcontain">
          <span id="grado_academico-label" class="property-label">
            <g:message code="profesor.grado_academico.label" default="Gradoacademico" />
          </span>
					
          <span class="property-value" aria-labelledby="grado_academico-label">
            <g:fieldValue bean="${profesorInstance}" field="grado_academico"/>
          </span>
		</li>
      </g:if>
			
      <g:if test="${profesorInstance?.correo}">
        <li class="fieldcontain">
          <span id="correo-label" class="property-label">
            <g:message code="profesor.correo.label" default="Correo" />
          </span>
          <span class="property-value" aria-labelledby="correo-label">
            <g:fieldValue bean="${profesorInstance}" field="correo"/>
          </span>
        </li>
      </g:if>
			
      <g:if test="${profesorInstance?.estado}">
		<li class="fieldcontain">
          <span id="estado-label" class="property-label">
            <g:message code="profesor.estado.label" default="Estado" />
          </span>			
          <span class="property-value" aria-labelledby="estado-label">
            <g:fieldValue bean="${profesorInstance}" field="estado"/>
          </span>
		</li>
      </g:if>
	
    </ol>
	
    <g:form url="[resource:profesorInstance, action:'delete']" method="DELETE">
      <fieldset class="buttons">
		<g:link class="edit" action="aceptar" resource="${profesorInstance}">
          <g:message code="Aceptar Profesor" default="Aceptar Profesor" />
        </g:link>
		<g:actionSubmit class="delete" action="delete" 
                        value="${message(code: 'default.button.delete.label', 
                                          default: 'Delete')}" 
                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', 
                                 default: 'Are you sure?')}');" />
      </fieldset>
    </g:form>
  </div>
</body>
</html>
