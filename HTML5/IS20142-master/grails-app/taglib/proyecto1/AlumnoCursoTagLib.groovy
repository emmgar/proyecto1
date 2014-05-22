package proyecto1

class AlumnoCursoTagLib {
    
  def loginService
    
  def solicitudCurso = {
      def user = session.user
      if(user && user.tipo == 1) {
         
         def curso = loginService.getCurso(user.usuario)
            
         if (curso) {
             switch(curso.estado) {
                 //Solicitud hecha, pero no confirmada por el profesor
                 case 1:
                     out << """<p>El profesor esta revisando tu solicitud.</p>"""
                     break
                     
                 //Solicitud hecha y aceptada por el profesor
                 case 2:
                     out << """<p>Estas inscrito en el curso de nivel ${curso.nivel}.</p>"""
                     out << """<p>Cuando apruebes el curso podrás descargar aquí tu constancia.</p>"""
                     break
                     
                 //Solicitud hecha y rechazada por el profesor
                 case 3:
                     out << """<p>Lo sentimos, este profesor no acepto tu solicitud.</p>"""
                     out << """<p>Pero puedes inscribirte en otros cursos:</p>"""
                 default:
                     out << """<p>[${link(action:"create", controller:"curso"){"Inscribirse a curso"}}]</p>"""
             }
         } else {
             out << """<p>[${link(action:"create", controller:"curso"){"Inscribirse a curso"}}]</p>"""
         }
    } 
  }
  
}