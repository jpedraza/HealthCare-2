package healthcare

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class ObesityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

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
        redirect(controller: 'patient', action: "show", id: obesityInstance.patient.id)
    }

}
