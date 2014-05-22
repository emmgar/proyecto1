package proyecto1

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CursoController {
  
    def loginService
    def pdfRenderingService
    def mailService
  
    //def beforeInterceptor = [action:this.&auth, except:["index", "show", "create", "save"]]
    def beforeInterceptor = [action:this.&auth, only:["create", "save", "update", "delete"]]

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
  
    def auth() {
        if (!session.user) {
            println "Acceso no autorizado a esta operacion, por favor ingresa primero"
            flash.message = "Para hacer esta tarea, primero debes acceder con tu usuario"
            redirect(controller:"usuario", action:"authenticate")
            return false
        }
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Curso.list(params), model:[cursoInstanceCount: Curso.count()]
    }
    
  def cuestionario() {
  }

    def show(Curso cursoInstance) {
        respond cursoInstance
    }

    def create() {
        Curso curso = new Curso(params)
        //println "Usuario: " + session.user.usuario
        respond curso
    }
    
    def createAlum() {
        Curso curso = new Curso(params)
        //println "Usuario: " + session.user.usuario
        respond curso
    }
    
    def  findProfesorForCurso() {
        //def curso = Curso.get(params.curso)
        def nivel = params.nivel
        def profes = Profesor.findAllByEstadoLikeAndNivelLike("aceptado", nivel)
        render (template: 'profesorSelection',model: [profesores: profes ])
    }
    
    def constancia() {
        def file = new File("constancia.pdf").withOutputStream { outputStream ->
            pdfRenderingService.render([template: "/layouts/constancia"], outputStream)
        }    
        response.setContentType("application/octet-stream")
        response.setHeader("Content-disposition", "attachment;filename=${file.getName()}")

        response.outputStream << file.newInputStream()
       
        return
    }
   

    @Transactional
    def save(Curso cursoInstance) {
        //println "SAVE CURSO:"
        //println cursoInstance
        if (cursoInstance == null) {
            notFound()
            return
        }

        if (cursoInstance.hasErrors()) {
            respond cursoInstance.errors, view:'create'
            return
        }
        
        cursoInstance.estudiante = Alumno.findByUsuario(session.user.usuario)

        cursoInstance.save flush:true
        
        Profesor profe = cursoInstance.profesor
        Alumno alum = cursoInstance.estudiante
        
        mailService.sendMail {
            to profe.correo
            from "salmones.20142@gmail.com"
            subject "Solicitud de Curso"
            body "Estimado Profesor: ${profe.nombres} ${profe.apellidoMaterno} ${profe.apellidoPaterno},\n\n\
               El alumno: ${alum.nombre} ${alum.apPaterno} ${alum.apMaterno}  \n\
              ha solicitado el curso de nivel: ${cursoInstance.nivel} \n\
             en el horario: ${cursoInstance.horario}, \n\
              por favor pongase en contacto con el alumno a su correo: ${alum.correo} \n\
              y en su caso confirme en la pagina de la escuela la aprobacion o rechazo del curso \n\
             Reciba un cordial Saludo!\n\n\
            Atentamente: Escuela de Ingles!"
        }

        request.withFormat {
            form multipartForm {
                //flash.message = message(code: 'default.created.message', args: [message(code: 'cursoInstance.label', default: 'Curso'), cursoInstance.id])
                //redirect cursoInstance
                flash.message  = "Se ha registrado tu solicitud para el curso. Pronto nos pondremos en contacto."
                redirect(controller:"usuario", action:"login")
                
            }
            '*' { respond cursoInstance, [status: CREATED] }
        }
    }

    def edit(Curso cursoInstance) {
        respond cursoInstance
    }

    @Transactional
    def update(Curso cursoInstance) {
        if (cursoInstance == null) {
            notFound()
            return
        }

        if (cursoInstance.hasErrors()) {
            respond cursoInstance.errors, view:'edit'
            return
        }

        cursoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Curso.label', default: 'Curso'), cursoInstance.id])
                redirect cursoInstance
            }
            '*'{ respond cursoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Curso cursoInstance) {

        if (cursoInstance == null) {
            notFound()
            return
        }

        cursoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Curso.label', default: 'Curso'), cursoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cursoInstance.label', default: 'Curso'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
