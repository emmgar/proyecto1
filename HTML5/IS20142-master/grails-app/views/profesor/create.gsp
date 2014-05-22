<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
    
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mainJQuerySteps.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.steps.css')}">  
    
    <script src="${resource(dir: 'js', file: 'jquery.steps.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jqBootstrapValidation.js')}"></script>
    
  </head>
  <body>  
    <div id="create-profesor" class="content scaffold-create" role="main">
      
      <!--<h1><g:message code="default.create.label" args="[entityName]" /></h1>-->
      <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
      </g:if>
      <g:hasErrors bean="${profesorInstance}">
        <ul class="errors" role="alert">
          <g:eachError bean="${profesorInstance}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
      </g:hasErrors>
      
      <g:form url="[resource:profesorInstance, action:'save']" id="formProfe" >
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
    </g:form>
      
    </div>
    
  </body>
</html>
