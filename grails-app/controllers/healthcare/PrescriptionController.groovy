package healthcare

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class PrescriptionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def create() {
        [prescriptionInstance: new Prescription(params)]
    }

    def save() {
        def prescriptionInstance = new Prescription(params)
        if (!prescriptionInstance.save(flush: true)) {
            render(view: "create", model: [prescriptionInstance: prescriptionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'prescription.label', default: 'Prescription'), prescriptionInstance.id])
        redirect(controller: 'patient', action: "show", id: prescriptionInstance.patient.id)
    }

}
