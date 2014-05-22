<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
    <title>Formulario de Registro</title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mainJQuerySteps.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.steps.css')}">  
    
    <script src="${resource(dir: 'js', file: 'jquery.steps.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jqBootstrapValidation.js')}"></script>
    
    <style>
      .wizard > .content {
        min-height: 20em !important;
      }
    </style>
    
  </head>
  <body>

    <div id="create-usuario" class="content scaffold-create" role="main">
      
      <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
      </g:if>
      
      <g:form url="[resource:usuarioInstance, action:'saveTmpUser']" id="formUsuario" class="form-horizontal" >
        <fieldset class="form">
          <g:render template="form"/>
        </fieldset>
        <!--
        <fieldset class="buttons">
          <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
      </g:form>-->
      
    </div>
  </body>
</html>
