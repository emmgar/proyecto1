
<%@ page import="proyecto1.Profesor" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'tablas.css')}" type="text/css">
    </head>
    <body>
        <div id="list-profesor" class="content scaffold-list" role="main">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>

                <tbody>
                    <g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                            <td><g:link action="show" id="${profesorInstance.id}">${fieldValue(bean: profesorInstance, field: "nombres")}</g:link></td>
                            <td>${fieldValue(bean: profesorInstance, field: "apellidoPaterno")}</td>
                            <td>${fieldValue(bean: profesorInstance, field: "apellidoMaterno")}</td>
                            <td>${fieldValue(bean: profesorInstance, field: "nivel")}</td>
                            <td>${fieldValue(bean: profesorInstance, field: "grado_academico")}</td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${profesorInstanceCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
