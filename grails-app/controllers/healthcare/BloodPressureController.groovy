package healthcare

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured


@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class BloodPressureController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def create() {
        [bloodPressureInstance: new BloodPressure(params)]
    }

    def save() {
        def bloodPressureInstance = new BloodPressure(params)
        if (!bloodPressureInstance.save(flush: true)) {
            render(view: "create", model: [bloodPressureInstance: bloodPressureInstance])
            return
        }
		
		if(params.mobile) {
			render 200
			return
		}
		
        flash.message = message(code: 'default.created.message', args: [message(code: 'bloodPressure.label', default: 'BloodPressure'), bloodPressureInstance.id])
        redirect(controller: 'patient', action: "show", id: bloodPressureInstance.patient.id)
    }

}
