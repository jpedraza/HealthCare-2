package healthcare

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class MedicalTestController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def create() {
        [medicalTestInstance: new MedicalTest(params)]
    }

    def save() {
        def medicalTestInstance = new MedicalTest(params)
        if (!medicalTestInstance.save(flush: true)) {
            render(view: "create", model: [medicalTestInstance: medicalTestInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'medicalTest.label', default: 'MedicalTest'), medicalTestInstance.id])
        redirect(controller: 'patient', action: "show", id: medicalTestInstance.patient.id)
    }

}
