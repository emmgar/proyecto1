package proyecto1



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AlumnoController {  
  
  def loginService
  def pdfRenderingService
  
  def beforeInterceptor = [action:this.&auth, except:["index", "create", "save"]]

  static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

  def index(Integer max) {
      params.max = Math.min(max ?: 10, 100)
      respond Alumno.list(params), model:[alumnoInstanceCount: Alumno.count()]
  }
  
  def auth() {
    if (!session.user) {
      println "Acceso no autorizado a esta operacion, por favor ingresa primero"
      flash.message = "Para hacer esta tarea, primero debes acceder con tu usuario"
      redirect(controller:"usuario", action:"authenticate")
      return false
    }
  }

  def show(Alumno alumnoInstance) {
    def user = session.user
    if (user.usuario == alumnoInstance.usuario ) {
      respond alumnoInstance
    } else {
      flash.message = "Lo sentimos, solo puedes ver información de tu usuario"
      redirect(controller:"alumno", action:"show", id:user.id)
    }
  }

  def create() {
    Alumno alumno = new Alumno(params)
    alumno.tipo = 1
    //println "controller alumno: "
    if (session.userTmp) {
      //println session.userTmp
      //println "correo:" + session.userTmp.correo
      
      alumno.usuario = session.userTmp.usuario
      alumno.passwd = session.userTmp.passwd
      alumno.correo = session.userTmp.correo
    }
    //println "controller alumno ---- "
    respond alumno
  }

  @Transactional
  def save(Alumno alumnoInstance) {
      if (alumnoInstance == null) {
          notFound()
          return
      }

      if (alumnoInstance.hasErrors()) {
          respond alumnoInstance.errors, view:'create'
          return
      }
      
      alumnoInstance.save flush:true
      
      def user = loginService.doLogin(alumnoInstance.usuario, alumnoInstance.passwd)
      session.user = user

      request.withFormat {
          form multipartForm {
              //flash.message = message(code: 'default.created.message', args: [message(code: 'alumnoInstance.label', default: 'Registro Exitoso de Alumno')])
              flash.message  = "Registro Exitoso de Alumno"
              redirect(controller:"curso", action:"create" )
              //redirect alumnoInstance
          }
          '*' { respond alumnoInstance, [status: CREATED] }
      }
  }

  def edit(Alumno alumnoInstance) {
    def user = session.user
    if (user.usuario == alumnoInstance.usuario ) {
      respond alumnoInstance
    } else {
      flash.message = "Lo sentimos, solo puedes editar información de tu usuario"
      redirect(controller:"alumno", action:"show", id:user.id)
    }
  }

  @Transactional
  def update(Alumno alumnoInstance) {
      if (alumnoInstance == null) {
          notFound()
          return
      }

      if (alumnoInstance.hasErrors()) {
          respond alumnoInstance.errors, view:'edit'
          return
      }

      alumnoInstance.save flush:true

      request.withFormat {
          form multipartForm {
              flash.message = message(code: 'default.updated.message', args: [message(code: 'Alumno.label', default: 'Alumno'), alumnoInstance.id])
              redirect alumnoInstance
          }
          '*'{ respond alumnoInstance, [status: OK] }
      }
  }
  
  def renderFormPDF(){
    def formInstance = Alumno.get(params.id)
    def args = [template:"pdf", model:[form:formInstance]]
    pdfRenderingService.render(args+[controller:this],response)
  }
  
    def downloadConstanciaPDF() {
        response.setContentType('APPLICATION/OCTET-STREAM')
        response.setHeader('Content-Disposition', 'Attachment;Filename="constancia.pdf"')
        Alumno alum = Alumno.get(session.user.id)
        println alum
        new File("constancia.pdf").withOutputStream { outputStream ->
            pdfRenderingService.render(template: "/layouts/constancia", 
                model: [alumno: alum], outputStream)
        }
        File f = new File("constancia.pdf")
        //println f.getAbsolutePath()
        
        response.outputStream << f.newInputStream()
        
    }

  @Transactional
  def delete(Alumno alumnoInstance) {

      if (alumnoInstance == null) {
          notFound()
          return
      }

      alumnoInstance.delete flush:true

      request.withFormat {
          form multipartForm {
              flash.message = message(code: 'default.deleted.message', args: [message(code: 'Alumno.label', default: 'Alumno'), alumnoInstance.id])
              redirect action:"index", method:"GET"
          }
          '*'{ render status: NO_CONTENT }
      }
  }

  protected void notFound() {
      request.withFormat {
          form multipartForm {
              flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumnoInstance.label', default: 'Alumno'), params.id])
              redirect action: "index", method: "GET"
          }
          '*'{ render status: NOT_FOUND }
      }
  }
}
