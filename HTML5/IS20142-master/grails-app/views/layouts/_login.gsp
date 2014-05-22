<!-- CHESSCON
  LOGIN
  Div donde se carga lo correspondiente al Login
-->

<div id="divLogin">
  <ul class="nav-pills ddmenu" style="margin: 0px; list-style: none;">
    <li class="dropdown active" id="menuLogin">
      <a id="navLogin" class="dropdown-toggle" style="background-color: rgb(212, 14, 0);
      border-radius: 10px !important;" href="${createLink(controller: 'usuario', action:'authenticate')}">Ingresar</a>
      <div class="dropdown-menu" style="padding:17px; margin-left: -180px;" >
        <g:form action="authenticate" method="post" class="form" controller="usuario" name="formLogin">
          <input name="login" id="username" type="text" placeholder="Username"> 
          <input name="password" id="password" type="password" placeholder="Password"><br>
          <g:submitButton name="btnLogin" class="btn" value="${message(code: 'default.button.login.label', default: 'Login')}" />
        </g:form>
      </div>
    </li>
  </ul>
</div><!-- FIN LOGIN -->