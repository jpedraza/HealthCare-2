package healthcare

import org.springframework.dao.DataIntegrityViolationException

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AppointmentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def create() {
        [appointmentInstance: new Appointment(params)]
    }

    def save() {
        def appointmentInstance = new Appointment(params)
        if (!appointmentInstance.save(flush: true)) {
            render(view: "create", model: [appointmentInstance: appointmentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'appointment.label', default: 'Appointment'), appointmentInstance.id])
        redirect(controller: 'patient', action: "show", id: appointmentInstance.patient.id)
    }
}
