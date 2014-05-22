<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->
<%@ page import="proyecto1.Profesor" %>
<%@ page contentType="text/html;charset=UTF-8" %>


<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="layout" content="main">
        <title>Niveles Profesor</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
                <link rel="stylesheet" href="${resource(dir: 'css', file: 'tablas.css')}" type="text/css">
        <script>
            $(function() {
            $( "#accordion" ).accordion();
            });
        </script>
    </head>
    <body>

        <div id="accordion">
            <h3>Básico</h3>
            <div id="list-profesor" class="content scaffold-list" role="main">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>

                <table>
                    <thead>
                        <tr>
                            <g:sortableColumn property="nombres" 
                            title="${message(code: 'Nombre', 
default: 'Nombre')}" />
                            <g:sortableColumn property="apellidoPaterno" 
                            title="${message(code: ' ', 
default: ' ')}" />
                            <g:sortableColumn property="apellidoMaterno" 
                            title="${message(code: ' ',  
default: ' ')}" />
                            <g:sortableColumn property="grado_academico" 
                            title="${message(code: 'profesor.grado_academico.label', 
default: 'Grado Academico')}" />
                        </tr>
                    </thead>

                    <tbody>
                        <g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
                            <g:if test="${profesorInstance.nivel == 'Basico'}">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td><g:link action="showUser" id="${profesorInstance.id}">
                                            ${fieldValue(bean: profesorInstance, field: "nombres")}
                                        </g:link></td>
                                    <td>${fieldValue(bean: profesorInstance, field: "apellidoPaterno")}</td>
                                    <td>${fieldValue(bean: profesorInstance, field: "apellidoMaterno")}</td>
                                    <td>${fieldValue(bean: profesorInstance, field: "grado_academico")}</td>
                                </tr>
                            </g:if>
                        </g:each>
                    </tbody>
                </table>

            </div>
            <h3>Intermedio</h3>
            <div id="list-profesor" class="content scaffold-list" role="main">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>

                <table>
                    <thead>
                        <tr>
                            <g:sortableColumn property="nombres" 
                            title="${message(code: 'Nombre', 
default: 'Nombre')}" />
                            <g:sortableColumn property="apellidoPaterno" 
                            title="${message(code: ' ', 
default: ' ')}" />
                            <g:sortableColumn property="apellidoMaterno" 
                            title="${message(code: ' ',  
default: ' ')}" />
                            <g:sortableColumn property="grado_academico" 
                            title="${message(code: 'profesor.grado_academico.label', 
default: 'Grado Academico')}" />
                        </tr>
                    </thead>

                    <tbody>
                        <g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
                            <g:if test="${profesorInstance.nivel == 'Intermedio'}">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td><g:link action="showUser" id="${profesorInstance.id}">
                                            ${fieldValue(bean: profesorInstance, field: "nombres")}
                                        </g:link></td>
                                    <td>${fieldValue(bean: profesorInstance, field: "apellidoPaterno")}</td>
                                    <td>${fieldValue(bean: profesorInstance, field: "apellidoMaterno")}</td>
                                    <td>${fieldValue(bean: profesorInstance, field: "grado_academico")}</td>
                                </tr>
                            </g:if>
                        </g:each>
                    </tbody>
                </table>

            </div>
            <h3>Avanzado</h3>
            <div id="list-profesor" class="content scaffold-list" role="main">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>

                <table>
                    <thead>
                        <tr>
                            <g:sortableColumn property="nombres" 
                            title="${message(code: 'Nombre', 
default: 'Nombre')}" />
                            <g:sortableColumn property="apellidoPaterno" 
                            title="${message(code: ' ', 
default: ' ')}" />
                            <g:sortableColumn property="apellidoMaterno" 
                            title="${message(code: ' ',  
default: ' ')}" />
                            <g:sortableColumn property="grado_academico" 
                            title="${message(code: 'profesor.grado_academico.label', 
default: 'Grado Academico')}" />
                        </tr>
                    </thead>

                    <tbody>
                        <g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
                            <g:if test="${profesorInstance.nivel == 'Avanzado'}">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td><g:link action="showUser" id="${profesorInstance.id}">
                                            ${fieldValue(bean: profesorInstance, field: "nombres")}
                                        </g:link></td>
                                    <td>${fieldValue(bean: profesorInstance, field: "apellidoPaterno")}</td>
                                    <td>${fieldValue(bean: profesorInstance, field: "apellidoMaterno")}</td>
                                    <td>${fieldValue(bean: profesorInstance, field: "grado_academico")}</td>
                                </tr>
                            </g:if>
                        </g:each>
                    </tbody>
                </table>

            </div>
            <h3>Conversación</h3>
            <div id="list-profesor" class="content scaffold-list" role="main">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>

                <table>
                    <thead>
                        <tr>
                            <g:sortableColumn property="nombres" 
                            title="${message(code: 'Nombre', 
default: 'Nombre')}" />
                            <g:sortableColumn property="apellidoPaterno" 
                            title="${message(code: ' ', 
default: ' ')}" />
                            <g:sortableColumn property="apellidoMaterno" 
                            title="${message(code: ' ',  
default: ' ')}" />
                            <g:sortableColumn property="grado_academico" 
                            title="${message(code: 'profesor.grado_academico.label', 
default: 'Grado Academico')}" />
                        </tr>
                    </thead>

                    <tbody>
                        <g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
                            <g:if test="${profesorInstance.nivel == 'Conversacion'}">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                    <td><g:link action="showUser" id="${profesorInstance.id}">
                                            ${fieldValue(bean: profesorInstance, field: "nombres")}
                                        </g:link></td>
                                    <td>${fieldValue(bean: profesorInstance, field: "apellidoPaterno")}</td>
                                    <td>${fieldValue(bean: profesorInstance, field: "apellidoMaterno")}</td>
                                    <td>${fieldValue(bean: profesorInstance, field: "grado_academico")}</td>
                                </tr>
                            </g:if>
                        </g:each>
                    </tbody>
                </table>

            </div>
        </div>


    </body>
</html>