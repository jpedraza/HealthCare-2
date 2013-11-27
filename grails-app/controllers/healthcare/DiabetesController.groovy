package healthcare

import org.springframework.dao.DataIntegrityViolationException

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DiabetesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [diabetesInstanceList: Diabetes.list(params), diabetesInstanceTotal: Diabetes.count()]
    }

    def create() {
        [diabetesInstance: new Diabetes(params)]
    }

    def save() {
        def diabetesInstance = new Diabetes(params)
        if (!diabetesInstance.save(flush: true)) {
            render(view: "create", model: [diabetesInstance: diabetesInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'diabetes.label', default: 'Diabetes'), diabetesInstance.id])
        redirect(action: "show", id: diabetesInstance.id)
    }

    def show(Long id) {
        def diabetesInstance = Diabetes.get(id)
        if (!diabetesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diabetes.label', default: 'Diabetes'), id])
            redirect(action: "list")
            return
        }

        [diabetesInstance: diabetesInstance]
    }

    def edit(Long id) {
        def diabetesInstance = Diabetes.get(id)
        if (!diabetesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diabetes.label', default: 'Diabetes'), id])
            redirect(action: "list")
            return
        }

        [diabetesInstance: diabetesInstance]
    }

    def update(Long id, Long version) {
        def diabetesInstance = Diabetes.get(id)
        if (!diabetesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diabetes.label', default: 'Diabetes'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (diabetesInstance.version > version) {
                diabetesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'diabetes.label', default: 'Diabetes')] as Object[],
                          "Another user has updated this Diabetes while you were editing")
                render(view: "edit", model: [diabetesInstance: diabetesInstance])
                return
            }
        }

        diabetesInstance.properties = params

        if (!diabetesInstance.save(flush: true)) {
            render(view: "edit", model: [diabetesInstance: diabetesInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'diabetes.label', default: 'Diabetes'), diabetesInstance.id])
        redirect(action: "show", id: diabetesInstance.id)
    }

    def delete(Long id) {
        def diabetesInstance = Diabetes.get(id)
        if (!diabetesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diabetes.label', default: 'Diabetes'), id])
            redirect(action: "list")
            return
        }

        try {
            diabetesInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'diabetes.label', default: 'Diabetes'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'diabetes.label', default: 'Diabetes'), id])
            redirect(action: "show", id: id)
        }
    }
}
