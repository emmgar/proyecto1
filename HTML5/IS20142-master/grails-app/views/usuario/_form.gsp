<%@ page import="proyecto1.Usuario" %>

<script>
  $(function () {
  $("#wizard").steps({
  headerTag: "h2",
  bodyTag: "section",
  transitionEffect: "slideLeft",
  onStepChanging: function (event, currentIndex) { 
    $( "#formUsuario" ).submit();
  },
  startIndex: 0,
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

<script>
  $(function () { $("input,select,textarea").not("[type=submit]").jqBootstrapValidation(); } );
</script>

<div id="wizard">
  <h2 id="firstStep">Datos de Usuario</h2>
  <section>
    
    <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'tipo', 'error')} required control-group">
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
    
    <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'usuario', 'error')} required control-group">
      <label for="usuario" class="control-label">
        <g:message code="usuario.usuario.label" default="Usuario" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
      <g:textField name="usuario" required="" value="${usuarioInstance?.usuario}" 
        data-validator-required-message="Por favor complete este campo"/>
      </div>
      <g:hasErrors bean="${usuarioInstance}" field="usuario">
        <g:eachError bean="${usuarioInstance}" var="error" field="usuario">
          <g:message error="${error}"/>
        </g:eachError>
      </g:hasErrors>

    </div>

    <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'passwd', 'error')} required control-group">
      <label for="passwd" class="control-label">
        <g:message code="usuario.passwd.label" default="Contraseña" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
      <g:field type="password" name="passwd" required="" value="${usuarioInstance?.passwd}"
        data-validator-required-message="Por favor complete este campo"/>
      </div>
      <g:hasErrors bean="${usuarioInstance}" field="passwd">
        <g:eachError bean="${usuarioInstance}" var="error" field="passwd">
          <g:message error="${error}"/>
        </g:eachError>
      </g:hasErrors>
    </div>
    
    <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'correo', 'error')} required control-group">
      <label for="correo" class="control-label">
        <g:message code="alumno.correo.label" default="Correo" />
        <span class="required-indicator">*</span>
      </label>
      <div class="controls">
      <g:textField name="correo" required="" value="${usuarioInstance?.correo}" 
        data-validator-required-message="Por favor complete este campo"/>
      </div>
    </div>
    
  </section>

  <h2 id="sndStep">Datos personales</h2>
  <section>
    algo
  </section>

  <h2>Datos Personales</h2>
  <section>
  </section>

  <h2>Elegir curso</h2>
  <section>
    algo
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
});


</script>
