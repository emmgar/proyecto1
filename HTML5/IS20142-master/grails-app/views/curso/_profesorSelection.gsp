
<%@ page contentType="text/html;charset=UTF-8" %>
</div>
        
        <div id="profesorSelection" class="fieldcontain required control-group">
            <label for="profesor">
		<g:message code="curso.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
        <g:select name="profesor.id" from="${profesores}" 
          optionKey="id"/> 
    </div>
    
</div>
