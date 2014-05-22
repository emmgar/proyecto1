package proyecto1



import grails.test.mixin.*
import spock.lang.*

@TestFor(EscuelaController)
@Mock(Escuela)
class EscuelaControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.escuelaInstanceList
            model.escuelaInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.escuelaInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def escuela = new Escuela()
            escuela.validate()
            controller.save(escuela)

        then:"The create view is rendered again with the correct model"
            model.escuelaInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            escuela = new Escuela(params)

            controller.save(escuela)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/escuela/show/1'
            controller.flash.message != null
            Escuela.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def escuela = new Escuela(params)
            controller.show(escuela)

        then:"A model is populated containing the domain instance"
            model.escuelaInstance == escuela
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def escuela = new Escuela(params)
            controller.edit(escuela)

        then:"A model is populated containing the domain instance"
            model.escuelaInstance == escuela
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/escuela/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def escuela = new Escuela()
            escuela.validate()
            controller.update(escuela)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.escuelaInstance == escuela

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            escuela = new Escuela(params).save(flush: true)
            controller.update(escuela)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/escuela/show/$escuela.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/escuela/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def escuela = new Escuela(params).save(flush: true)

        then:"It exists"
            Escuela.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(escuela)

        then:"The instance is deleted"
            Escuela.count() == 0
            response.redirectedUrl == '/escuela/index'
            flash.message != null
    }
}
