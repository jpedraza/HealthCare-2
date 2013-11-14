package healthcare

import org.springframework.dao.DataIntegrityViolationException

class ObesityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [obesityInstanceList: Obesity.list(params), obesityInstanceTotal: Obesity.count()]
    }

    def create() {
        [obesityInstance: new Obesity(params)]
    }

    def save() {
        def obesityInstance = new Obesity(params)
        if (!obesityInstance.save(flush: true)) {
            render(view: "create", model: [obesityInstance: obesityInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'obesity.label', default: 'Obesity'), obesityInstance.id])
        redirect(action: "show", id: obesityInstance.id)
    }

    def show(Long id) {
        def obesityInstance = Obesity.get(id)
        if (!obesityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'obesity.label', default: 'Obesity'), id])
            redirect(action: "list")
            return
        }

        [obesityInstance: obesityInstance]
    }

    def edit(Long id) {
        def obesityInstance = Obesity.get(id)
        if (!obesityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'obesity.label', default: 'Obesity'), id])
            redirect(action: "list")
            return
        }

        [obesityInstance: obesityInstance]
    }

    def update(Long id, Long version) {
        def obesityInstance = Obesity.get(id)
        if (!obesityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'obesity.label', default: 'Obesity'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (obesityInstance.version > version) {
                obesityInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'obesity.label', default: 'Obesity')] as Object[],
                          "Another user has updated this Obesity while you were editing")
                render(view: "edit", model: [obesityInstance: obesityInstance])
                return
            }
        }

        obesityInstance.properties = params

        if (!obesityInstance.save(flush: true)) {
            render(view: "edit", model: [obesityInstance: obesityInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'obesity.label', default: 'Obesity'), obesityInstance.id])
        redirect(action: "show", id: obesityInstance.id)
    }

    def delete(Long id) {
        def obesityInstance = Obesity.get(id)
        if (!obesityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'obesity.label', default: 'Obesity'), id])
            redirect(action: "list")
            return
        }

        try {
            obesityInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'obesity.label', default: 'Obesity'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'obesity.label', default: 'Obesity'), id])
            redirect(action: "show", id: id)
        }
    }
}
