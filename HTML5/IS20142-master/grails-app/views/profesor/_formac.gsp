
<%@ page import="proyecto1.Profesor" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'nombres', 'error')} required">
  <label for="nombres">
    <g:message code="profesor.nombres.label" default="Nombres" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField name="nombres" required="" value="${profesorInstance?.nombres}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoPaterno', 'error')} required">
  <label for="apellidoPaterno">
    <g:message code="profesor.apellidoPaterno.label" default="Apellido Paterno" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField name="apellidoPaterno" required="" value="${profesorInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'apellidoMaterno', 'error')} required">
  <label for="apellidoMaterno">
    <g:message code="profesor.apellidoMaterno.label" default="Apellido Materno" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField name="apellidoMaterno" required="" value="${profesorInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'grado_academico', 'error')} required">
  <label for="grado_academico">
    <g:message code="profesor.grado_academico.label" default="Gradoacademico" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField name="grado_academico" required="" value="${profesorInstance?.grado_academico}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'correo', 'error')} required">
  <label for="correo">
    <g:message code="profesor.correo.label" default="Correo" />
    <span class="required-indicator">*</span>
  </label>
  <g:field type="email" name="correo" required="" value="${profesorInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'estado', 'error')} ">
  <label for="estado">
	<g:message code="profesor.estado.label" default="Estado" />
  </label>
  <g:select name="estado" from="${profesorInstance.constraints.estado.inList}" value="${profesorInstance?.estado}" valueMessagePrefix="profesor.estado" noSelection="['': '']"/>
</div>
