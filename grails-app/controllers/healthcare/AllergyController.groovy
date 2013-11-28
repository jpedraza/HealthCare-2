package healthcare

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AllergyController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

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
        redirect(controller: 'patient', action: "show", id: allergyInstance.patient.id)
    }

}
