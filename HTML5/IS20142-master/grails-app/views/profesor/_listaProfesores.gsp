<div id="list-profesor" class="content scaffold-list" role="main">
	<g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
	</g:if>
	
    <table>
      <thead>
        <tr>
          <g:sortableColumn property="nombres" 
                            title="${message(code: 'profesor.nombres.label', 
                                     default: 'Nombres')}" />
          <g:sortableColumn property="apellidoPaterno" 
                            title="${message(code: 'profesor.apellidoPaterno.label', 
                                      default: 'Apellido Paterno')}" />
          <g:sortableColumn property="apellidoMaterno" 
                            title="${message(code: 'profesor.apellidoMaterno.label',  
                                    default: 'Apellido Materno')}" />
          <g:sortableColumn property="estado" 
                            title="${message(code: 'profesor.estado.label', 
                            default: 'Estado')}" />
		</tr>
	</thead>
    
    <tbody>
      <g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
          <td><g:link action="show" id="${profesorInstance.id}">
              ${fieldValue(bean: profesorInstance, field: "nombres")}
           </g:link></td>
          <td>${fieldValue(bean: profesorInstance, field: "apellidoPaterno")}</td>
          <td>${fieldValue(bean: profesorInstance, field: "apellidoMaterno")}</td>
          <td>${fieldValue(bean: profesorInstance, field: "grado_academico")}</td>
        </tr>
      </g:each>
    </tbody>
  </table>
  
  <div class="pagination">
    <g:paginate total="${profesorInstanceCount ?: 0}" />
  </div>
</div>
