<%@ page import="proyecto1.Alumno" %>
<%@ page import="proyecto1.Curso" %>

<script>
  $(function () {
  $("#wizard").steps({
  headerTag: "h2",
  bodyTag: "section",
  transitionEffect: "slideLeft",
  onFinished: function (event, currentIndex) { 
  $( "#formAlumno" ).submit();
  },
  onStepChanging: function (event, currentIndex) { 
    if (currentIndex == 1) {
      $( "#formAlumno" ).submit();
      }
  },
  startIndex: 1,
  forceMoveForward: true,
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
  <h2 id="firstStep">Datos de Usuario</h2>
  <section>
    <div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'tipo', 'error')} required control-group">
      <label for="tipo" class="control-label">
        <g:message code="usuario.tipo.label" default="Tipo" />
      </label>
      <div class="controls">
      <g:select name="tipo"
      from="${['Alumno', 'Profesor']}"
      value="${usuarioInstance?.role}" 
      keys="${[1,2,3]}" />
      </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'usuario', 'error')} required control-group">
      <label for="usuario" class="control-label">
        <g:message code="alumno.usuario.label" default="Usuario" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:textField name="usuario" required="" value="${alumnoInstance?.usuario}"/>
      </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'passwd', 'error')} required control-group">
      <label for="passwd" class="control-label">
        <g:message code="alumno.passwd.label" default="Passwd" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:field type="password" name="passwd" required="" value="${alumnoInstance?.passwd}"/>
      </div>
    </div>
    
    <div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'correo', 'error')} required control-group">
      <label for="correo" class="control-label">
        <g:message code="alumno.correo.label" default="Correo" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
      <g:textField name="correo" required="" value="${alumnoInstance?.correo}" 
        data-validator-required-message="Por favor complete este campo"/>
      </div>
    </div>
    
  </section>

  <h2 id="sndStep">Datos Personales</h2>
  <section>
    <div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required control-group">
      <label for="nombre" class="control-label">
        <g:message code="alumno.nombre.label" default="Nombre" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
      <g:textField name="nombre" required="" value="${alumnoInstance?.nombre}"/>
      </div>
      <g:hasErrors bean="${alumnoInstance}" field="nombre">
        <g:eachError bean="${alumnoInstance}" var="error" field="nombre">
          <g:message error="${error}"/>
        </g:eachError>
      </g:hasErrors>
    </div>

    <div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apPaterno', 'error')} required control-group">
      <label for="apPaterno" class="control-label">
        <g:message code="alumno.apPaterno.label" default="Ap Paterno" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
      <g:textField name="apPaterno" required="" value="${alumnoInstance?.apPaterno}"/>
      </div>
      <g:hasErrors bean="${alumnoInstance}" field="apPaterno">
        <g:eachError bean="${alumnoInstance}" var="error" field="apPaterno">
          <g:message error="${error}"/>
        </g:eachError>
      </g:hasErrors>
    </div>

    <div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apMaterno', 'error')} required control-group">
      <label for="apMaterno" class="control-label">
        <g:message code="alumno.apMaterno.label" default="Ap Materno" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
      <g:textField name="apMaterno" required="" value="${alumnoInstance?.apMaterno}"/>
      </div>
      <g:hasErrors bean="${alumnoInstance}" field="apMaterno">
        <g:eachError bean="${alumnoInstance}" var="error" field="apMaterno">
          <g:message error="${error}"/>
        </g:eachError>
      </g:hasErrors>
    </div>

    <div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'fecha_nac', 'error')} required control-group">
      <label for="fecha_nac" class="control-label">
        <g:message code="alumno.fecha_nac.label" default="Fechanac" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
        <g:datePicker name="fecha_nac" precision="day"
        value="${alumnoInstance?.fecha_nac}" 
          years="${1940..2002}" />
      </div>
      <g:hasErrors bean="${alumnoInstance}" field="fecha_nac">
        <g:eachError bean="${alumnoInstance}" var="error" field="fecha_nac">
          <g:message error="${error}"/>
        </g:eachError>
      </g:hasErrors>
    </div>
  </section>

  <h2>Elegir curso</h2>
  <section>
    
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
  correo: {
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
</script>
