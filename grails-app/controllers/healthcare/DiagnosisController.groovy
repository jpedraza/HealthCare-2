package healthcare

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class DiagnosisController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def create() {
        [diagnosisInstance: new Diagnosis(params)]
    }

    def save() {
        def diagnosisInstance = new Diagnosis(params)
        if (!diagnosisInstance.save(flush: true)) {
            render(view: "create", model: [diagnosisInstance: diagnosisInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'diagnosis.label', default: 'Diagnosis'), diagnosisInstance.id])
        redirect(controller: 'patient', action: "show", id: diagnosisInstance.patient.id)
    }

}
