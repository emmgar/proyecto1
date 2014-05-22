<%@ page import="proyecto1.Profesor" %>

<script>
  $(function () {
  $("#wizard").steps({
  headerTag: "h2",
  bodyTag: "section",
  transitionEffect: "slideLeft",
  onFinished: function (event, currentIndex) { 
  $( "#formProfe" ).submit();
  },
  forceMoveForward: true,
  startIndex: 1,
  labels: {
  cancel: "Cancelar",
  current: "Paso Actual:",
  pagination: "Paginacion",
  finish: "Enviar Datos",
  next: "Siguiente",
  previous: "Anterior",
  loading: "Cargando ..."
  }
  });

  });
</script>

<div id="wizard">
  <h2 id="sndStep">Datos de Usuario</h2>
  <section>
    Datos de Usuario ...
    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'tipo', 'error')} required control-group">
      <label for="tipo" class="control-label">
        <g:message code="usuario.tipo.label" default="Tipo" />
      </label>
      <div class="controls">
      <g:select name="tipo"
      from="${['Alumno', 'Profesor']}"
      value="${profesorInstance?.role}" 
      keys="${[1,2,3]}" />
      </div>
    </div>
    
    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'usuario', 'error')} required control-group">
      <label for="usuario" class="control-label">
        <g:message code="usuario.usuario.label" default="Usuario" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
      <g:textField name="usuario" required="" value="${profesorInstance?.usuario}" 
        data-validator-required-message="Por favor complete este campo"/>
      </div>
      <g:hasErrors bean="${profesorInstance}" field="usuario">
        <g:eachError bean="${profesorInstance}" var="error" field="usuario">
          <g:message error="${error}"/>
        </g:eachError>
      </g:hasErrors>

    </div>

    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'passwd', 'error')} required control-group">
      <label for="passwd" class="control-label">
        <g:message code="usuario.passwd.label" default="Contraseña" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
      <g:field type="password" name="passwd" required="" value="${profesorInstance?.passwd}"
        data-validator-required-message="Por favor complete este campo"/>
      </div>
      <g:hasErrors bean="${profesorInstance}" field="passwd">
        <g:eachError bean="${profesorInstance}" var="error" field="passwd">
          <g:message error="${error}"/>
        </g:eachError>
      </g:hasErrors>
    </div>
    
    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'correo', 'error')} required control-group">
      <label for="correo" class="control-label">
        <g:message code="alumno.correo.label" default="Correo" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
      <g:textField name="correo" required="" value="${profesorInstance?.correo}" 
        data-validator-required-message="Por favor complete este campo"/>
      </div>
    </div>
  </section>

  <h2>Datos Personales</h2>
  <section>

    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nombres', 'error')} required control-group">
      <label for="nombres" class="control-label">
        <g:message code="profesor.nombres.label" default="Nombres" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:textField name="nombres" required="" value="${profesorInstance?.nombres}"/>
      </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoPaterno', 'error')} required control-group">
      <label for="apellidoPaterno" class="control-label">
        <g:message code="profesor.apellidoPaterno.label" default="Apellido Paterno" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:textField name="apellidoPaterno" required="" value="${profesorInstance?.apellidoPaterno}"/>
      </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoMaterno', 'error')} required control-group">
      <label for="apellidoMaterno" class="control-label">
        <g:message code="profesor.apellidoMaterno.label" default="Apellido Materno" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:textField name="apellidoMaterno" required="" value="${profesorInstance?.apellidoMaterno}"/>
      </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'fechaDeNacimiento', 'error')} required control-group">
      <label for="fechaDeNacimiento" class="control-label">
        <g:message code="profesor.fechaDeNacimiento.label" default="Fecha De Nacimiento" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:datePicker name="fechaDeNacimiento" precision="day"  value="${profesorInstance?.fechaDeNacimiento}"  />
      </div>
    </div>
</section>

<h2>Informació para la solicitud de Cursos</h2>
  <section>
    <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nivel', 'error')} control-group ">
    <label for="nivel" class="control-label">
      <g:message code="profesor.nivel.label" default="Nivel" />

    </label>
    <div class="controls">
      <g:select name="nivel" from="${profesorInstance.constraints.nivel.inList}" value="${profesorInstance?.nivel}" valueMessagePrefix="profesor.nivel" noSelection="['': '']"/>
    </div>
  </div>

  <div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'grado_academico', 'error')} required control-group">
    <label for="grado_academico" class="control-label">
      <g:message code="profesor.grado_academico.label" default="Gradoacademico" />
      <span class="required-indicator">*</span>
    </label>
    <div class="controls">
      <g:textField name="grado_academico" required="" value="${profesorInstance?.grado_academico}"/>
    </div>
  </div> 
  </section>

</div>                      

<script type="text/javascript">
$(document).ready(function() {
  $('#formUsuario').validate(
  {
    rules: {
      usuario: {
        minlength: 4,
        required: true
      },
      passwd: {
        minlength: 3,
        required: true
      },
      email: {
        required: true,
        email: true
      }
    }
  });
});

$(document).ready(function() {
    $.extend(jQuery.validator.messages, {
        required: "Este campo es obligatorio.",
        remote: "Please fix this field.",
        email: "Por favor introduce una dirección de correo valida.",
        url: "Por favor ingresa una URL válida.",
        date: "Ingresa una fecha válida.",
        dateISO: "Please enter a valid date (ISO).",
        number: "Introduce un número válido.",
        digits: "Ingresa solo dígitos.",
        creditcard: "Please enter a valid credit card number.",
        equalTo: "Ingresa el mismo valor.",
        accept: "Please enter a value with a valid extension.",
        maxlength: $.validator.format("El número de carácteres permitos máximo son {0}."),
        minlength: $.validator.format("Por favor ingresa al menos {0} carácteres."),
        rangelength: $.validator.format("Please enter a value between {0} and {1} characters long."),
        range: $.validator.format("Please enter a value between {0} and {1}."),
        max: $.validator.format("Please enter a value less than or equal to {0}."),
        min: $.validator.format("Please enter a value greater than or equal to {0}.")
    });
