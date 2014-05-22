<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
 
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mainJQuerySteps.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.steps.css')}">
    
    <script src="${resource(dir: 'js', file: 'jquery.steps.js')}"></script>

  </head>
  
  <body>
    <div id="create-alumno" class="content scaffold-create" role="main">
      <!--<h1><g:message code="default.create.label" args="[entityName]" /></h1>-->
      <!--<h1>Formulario de Registro</h1>-->
      <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
      </g:if>
      
      <g:form url="[resource:alumnoInstance, action:'save']" id="formAlumno" >
        <fieldset class="form">
          <g:render template="form"/>
        </fieldset>        
      </g:form>
    </div>
  </body>
</html>
