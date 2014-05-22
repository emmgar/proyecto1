
<%@ page import="proyecto1.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-alumno" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="usuario" title="${message(code: 'alumno.usuario.label', default: 'Usuario')}" />
					
						<g:sortableColumn property="passwd" title="${message(code: 'alumno.passwd.label', default: 'Passwd')}" />
					
						<g:sortableColumn property="role" title="${message(code: 'alumno.role.label', default: 'Role')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'alumno.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apPaterno" title="${message(code: 'alumno.apPaterno.label', default: 'Ap Paterno')}" />
					
						<g:sortableColumn property="apMaterno" title="${message(code: 'alumno.apMaterno.label', default: 'Ap Materno')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alumnoInstanceList}" status="i" var="alumnoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alumnoInstance.id}">${fieldValue(bean: alumnoInstance, field: "usuario")}</g:link></td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "passwd")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "role")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "apPaterno")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "apMaterno")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alumnoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
