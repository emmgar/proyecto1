<!-- CHESSCON
  MENU
  Aquí esta todo lo correspondiente al menú que aparece arriba a la derecha
-->
<div class="row-fluid">
    <div class="span9">
        <div id="divMenuRight">
            <nav class="navbar">
                <button type="button"
                class="btn btn-navbar-highlight btn-large btn-primary" data-toggle="collapse" data-target=".nav-collapse">
                MENÚ <span class="icon-chevron-down icon-white"></span>
                </button>

                <div class="nav-collapse collapse">
                    <ul class="nav nav-pills ddmenu">

                        <li class="dropdown active"><a href="${createLink(uri: '/')}">Inicio</a></li>

                        <li class="dropdown">
                            <a href="${createLink(controller: 'profesor')}" class="dropdown-toggle">Nuestros Cursos <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="${createLink(controller: 'profesor',action: 'index')}">Profesores</a></li>
                                <li class="dropdown">
                                    <a href="${createLink(controller: 'profesor',action:'nivelesProfesor')}" class="dropdown-toggle">Niveles »</a>
                                    <ul class="dropdown-menu sub-menu" style = "display: none;">
                                        <li><a href="${createLink(controller: 'profesor',action: 'index')}">Básico</a></li>
                                        <li><a href = "${createLink(controller: 'profesor',action: 'create')}">Medio</a></li>
                                        <li><a href="${createLink(controller: 'profesor',action: 'edit')}">Avanzado</a></li>
                                        <li><a href="${createLink(controller: 'profesor',action: 'edit')}">Comunicación</a></li>
                                    </ul>
                                </li>
                                <li><a href="${createLink(controller: 'profesor')}">Horarios</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="${createLink(controller: 'alumno')}" class="dropdown-toggle">Conocenos <b ></b></a>
                            <!--<ul class="dropdown-menu">
                                <li class="dropdown">
                                    <a href = "${createLink(controller: 'alumno',action: 'create')}">Registrar Alumno</a>    
                                </li>
                            </ul>-->
                        
<!--
                        <li class="dropdown">
                            <a href="${createLink(controller: 'escuela')}" class="dropdown-toggle">Escuela <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href = "${createLink(controller: 'escuela',action: 'createProfesor')}">Lista de Prosores en espera de ser aceptados</a></li>
                                <li><a href = "${createLink(controller: 'curso',action: 'create')}">Crear Curso</a></li>
                            </ul>
                        </li>-->
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    
    <div class="span3">
            <div class="nav pull-right text-right" style="margin-top: 20px; margin-bottom: 0px;">
                <g:loginControl />
            </div>
        </div>
    
</div> <!-- FIN MENU -->
