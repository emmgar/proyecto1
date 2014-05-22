
<!--<script type="text/javascript">
    $(function(){
    $('#slider div:gt(0)').hide();
    setInterval(function(){
    $('#slider div:first-child').fadeOut(0)
    .next('div').fadeIn(1000)
    .end().appendTo('#slider');}, 4000);
    });
</script>-->

<header class="divPanel notop nobottom">

<!-- CHESSCON
DIV para LOGOTIPO y Slogan de la escuela
-->
    
        <div class = "span19">  
            <div id ="divLogo">
                <div id="banner" >
                    <img src="${createLinkTo(dir: 'images', file: 'banner_index.jpg')}" />
                </div>
            </div>
        </div>




  <!--<div id="slider">
    LOGOTIPO de la ESCUELA
      <div>
          <img src="${createLinkTo(dir: 'images', file: 'banner_index.jpg')}">
          <p>TEXTO1</p>
      </div>
      <div>
          <img src="${createLinkTo(dir: 'images', file: 'banner_index2.jpg')}">
          <p>TEXTO2</p>
      </div>
      <div>
          <img src="${createLinkTo(dir: 'images', file: 'banner_index.jpg')}">
          <p>TEXTO3</p>
      </div>
  </div>
  </div>-->  <!-- FIN LOGOTIPO Y SLOGAN -->

<!--<div class="row-fluid">
  <div class="span12">
    <div id="contentInnerSeparator"></div>
  </div>
</div>-->

 
    <g:loginControlMenu/>

<!-- CHESSCON
  MARGEN de separación entre el encabezado (logotipo y menu)
  y el contenido de la pagina
-->
<!--<div class="row-fluid">
  <div class="span12">
    <div id="contentInnerSeparator"></div>
  </div>
</div>-->

</header>