
<html>
  <head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
    <title>Inscribir Curso</title>

    <style>
      .wizard > .content {
        min-height: 20em !important;
      }
    </style>
    
  </head>
  <body>
    <div id="create-curso" class="content scaffold-create" role="main">
      
      <g:if test="${flash.message}">
        <h2 style="color: #09F; text-align: center;"><div class="message" role="status">${flash.message}</div></h2>
        </g:if>
        
        <g:hasErrors bean="${cursoInstance}">
        <ul class="errors" role="alert">
          <g:eachError bean="${cursoInstance}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
      </g:hasErrors>
        
        <g:form url="[resource:cursoInstance, action:'save']" id="formCurso" >
        <fieldset class="form">
          <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
          <g:submitButton name="create" class="save" value="${message(code: 'Inscribir', default: 'Inscribir')}" />
        </fieldset>
      </g:form>
        
    </div>
  </body>
</html>
