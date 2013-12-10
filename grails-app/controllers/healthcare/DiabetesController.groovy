package healthcare

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DiabetesController {
	def springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def create() {
        [diabetesInstance: new Diabetes(params)]
    }

    def save() {
        def diabetesInstance = new Diabetes(params)
        if (!diabetesInstance.save(flush: true)) {
            render(view: "create", model: [diabetesInstance: diabetesInstance])
            return
        }
		
		if(params.mobile) {
			render 200
			return
		}

        flash.message = message(code: 'default.created.message', args: [message(code: 'diabetes.label', default: 'Diabetes'), diabetesInstance.id])
        redirect(controller: 'patient', action: "show", id: diabetesInstance.patient.id)
    }
	
	@Secured(['ROLE_USER'])
	def saveCurrent() {
		def diabetesInstance = new Diabetes(params)
		diabetesInstance.patient = (Patient)springSecurityService.currentUser
		
		if (!diabetesInstance.save(flush: true)) {
			render(view: "create", model: [diabetesInstance: diabetesInstance])
			return
		}
		
		if(params.mobile) {
			render 200
			return
		}

		flash.message = message(code: 'default.created.message', args: [message(code: 'diabetes.label', default: 'Diabetes'), diabetesInstance.id])
		redirect(controller: 'patient', action: "showCurrent", id: diabetesInstance.patient.id)
	}

}
