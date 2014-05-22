
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta name="layout" content="main" />
    <title>Ingresar</title>         
    
    <style type="text/css">
      input[type=submit] {
        background: rgb(191, 13, 0); 
        border:1px solid #bd0000;
        color: white;
        cursor:pointer;
        -webkit-border-radius: 6px;
        background-image: -webkit-gradient(linear, left top, left bottom, from(#d40000), to(#bf0000));
        border-radius: 6px; 
        font-size: 17.5px;
        padding: 11px 19px;
        text-shadow: 0 -1px 0 rgba(0,0,0,0.25);
        display: inline-block;
        line-height: 20px;
      }
    </style>
    
  </head>
  <body>
    <div class="row-fluid">
      <g:if test="${flash.message}">
              <h2 style="color: #09F; text-align: center;"><div class="message" role="status">${flash.message}</div></h2>
			</g:if>
      <div class="span12">
        <div id="headerSeparator"></div>

        <div class="row-fluid">
          <div class="span6">
            <div class="divPanel">
              <div class="page-content centered_menu" style="padding: 31px 0px 0px; ">
              <h2 style="margin-top: 16px; font-family: 'Terminal Dosis Light';
              line-height: 70px; color: #474747; letter-spacing: 1px;
              font-size: 61px; display: inline-block !important;">
              Ingresa tus datos
            </h2>
              </div>
              <g:if test="${flash.message}">
                <div class="message">${flash.message}</div>
              </g:if>
              <g:form action="authenticate" method="post" >
                <div class="dialog" style="text-align: right; padding: 10px; margin: 10px;">
                  <table>
                    <tbody>            
                      <tr class="prop">
                        <td class="name">
                          <label for="login">Usuario:</label>
                        </td>
                        <td>
                          <input type="text" id="login" name="login"/>
                        </td>
                      </tr> 

                      <tr class="prop">
                        <td class="name">
                          <label for="password">Contraseña:</label>
                        </td>
                        <td>
                          <input type="password" id="password" name="password"/>
                        </td>
                      </tr> 
                    </tbody>
                  </table>
                </div>
                <div class="buttons">
                    <input type="submit" value="Ingresar" />
                </div>
              </g:form>
            </div>
          </div>
          
          <div class="span6 jumbotron panel panel-danger">
            <div id="divHeaderText" class="page-content">
              <div id="divHeaderLine1">¿No te has registrado?</div><br />
              <div id="divHeaderLine2">Hazlo ahora, es fácil y rápido. Podrás 
                inscribirte con los mejores profesores!</div><br />
              <div id="divHeaderLine4">
                <!--<a class="btn btn-large btn-secondary" href="#">Ver horarios</a> -->
                <a class="btn btn-large btn-primary" href="${createLink(controller: 'usuario',action: 'create')}">Registrate Ahora!</a>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
  </body>
</html>
