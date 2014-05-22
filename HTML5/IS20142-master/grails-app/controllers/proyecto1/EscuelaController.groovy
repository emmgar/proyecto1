package proyecto1



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EscuelaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Escuela.list(params), model:[escuelaInstanceCount: Escuela.count()]
    }
      
    def show(Profesor profesorInstance) {
        respond profesorInstance
    }

    def create() {
        respond new Escuela(params)
    }
    
    def createProfesor() {
       respond Profesor.findAllByEstadoNotEqual('aceptado'), model:[profesorInstanceCount: Profesor.count()]
    }
    
    def aceptarProfesor(Profesor profesorInstance){
        profesorInstance.cambiaEstado()
        
    }

    @Transactional
    def save(Escuela escuelaInstance) {
        if (escuelaInstance == null) {
            notFound()
            return
        }

        if (escuelaInstance.hasErrors()) {
            respond escuelaInstance.errors, view:'create'
            return
        }

        escuelaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'escuelaInstance.label', default: 'Escuela'), escuelaInstance.id])
                redirect escuelaInstance
            }
            '*' { respond escuelaInstance, [status: CREATED] }
        }
    }

    def edit(Escuela escuelaInstance) {
        respond escuelaInstance
    }

    @Transactional
    def update(Escuela escuelaInstance) {
        if (escuelaInstance == null) {
            notFound()
            return
        }

        if (escuelaInstance.hasErrors()) {
            respond escuelaInstance.errors, view:'edit'
            return
        }

        escuelaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Escuela.label', default: 'Escuela'), escuelaInstance.id])
                redirect escuelaInstance
            }
            '*'{ respond escuelaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Escuela escuelaInstance) {

        if (escuelaInstance == null) {
            notFound()
            return
        }

        escuelaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Escuela.label', default: 'Escuela'), escuelaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'escuelaInstance.label', default: 'Escuela'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
