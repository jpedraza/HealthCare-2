package healthcare

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AllergyController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [allergyInstanceList: Allergy.list(params), allergyInstanceTotal: Allergy.count()]
    }

    def create() {
        [allergyInstance: new Allergy(params)]
    }

    def save() {
        def allergyInstance = new Allergy(params)
        if (!allergyInstance.save(flush: true)) {
            render(view: "create", model: [allergyInstance: allergyInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'allergy.label', default: 'Allergy'), allergyInstance.id])
        redirect(action: "show", id: allergyInstance.id)
    }

    def show(Long id) {
        def allergyInstance = Allergy.get(id)
        if (!allergyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allergy.label', default: 'Allergy'), id])
            redirect(action: "list")
            return
        }

        [allergyInstance: allergyInstance]
    }

    def edit(Long id) {
        def allergyInstance = Allergy.get(id)
        if (!allergyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allergy.label', default: 'Allergy'), id])
            redirect(action: "list")
            return
        }

        [allergyInstance: allergyInstance]
    }

    def update(Long id, Long version) {
        def allergyInstance = Allergy.get(id)
        if (!allergyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allergy.label', default: 'Allergy'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (allergyInstance.version > version) {
                allergyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'allergy.label', default: 'Allergy')] as Object[],
                          "Another user has updated this Allergy while you were editing")
                render(view: "edit", model: [allergyInstance: allergyInstance])
                return
            }
        }

        allergyInstance.properties = params

        if (!allergyInstance.save(flush: true)) {
            render(view: "edit", model: [allergyInstance: allergyInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'allergy.label', default: 'Allergy'), allergyInstance.id])
        redirect(action: "show", id: allergyInstance.id)
    }

    def delete(Long id) {
        def allergyInstance = Allergy.get(id)
        if (!allergyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allergy.label', default: 'Allergy'), id])
            redirect(action: "list")
            return
        }

        try {
            allergyInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'allergy.label', default: 'Allergy'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'allergy.label', default: 'Allergy'), id])
            redirect(action: "show", id: id)
        }
    }
}
