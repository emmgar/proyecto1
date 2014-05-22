
<%@ page import="proyecto1.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-curso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list curso">
			
				<g:if test="${cursoInstance?.nivel}">
				<li class="fieldcontain">
					<span id="nivel-label" class="property-label"><g:message code="curso.nivel.label" default="Nivel" /></span>
					
						<span class="property-value" aria-labelledby="nivel-label"><g:fieldValue bean="${cursoInstance}" field="nivel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.profesor}">
				<li class="fieldcontain">
					<span id="profesor-label" class="property-label"><g:message code="curso.profesor.label" default="Profesor" /></span>
					
						<span class="property-value" aria-labelledby="profesor-label"><g:link controller="profesor" action="show" id="${cursoInstance?.profesor?.id}">${cursoInstance?.profesor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.horario}">
				<li class="fieldcontain">
					<span id="horario-label" class="property-label"><g:message code="curso.horario.label" default="Horario" /></span>
					
						<span class="property-value" aria-labelledby="horario-label"><g:fieldValue bean="${cursoInstance}" field="horario"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cursoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cursoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
