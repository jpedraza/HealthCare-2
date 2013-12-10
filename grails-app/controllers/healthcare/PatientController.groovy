package healthcare

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured


@Secured(['ROLE_ADMIN'])
class PatientController {
	def springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def create() {
        [patientInstance: new Patient(params)]
    }

    def save() {
        def patientInstance = new Patient(params)
        if (!patientInstance.save(flush: true)) {
            render(view: "create", model: [patientInstance: patientInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'patient.label', default: 'Patient'), patientInstance.id])
        redirect(action: "show", id: patientInstance.id)
    }
	
	@Secured(['ROLE_USER'])
	def showCurrent() {
		def patientInstance = (Patient)springSecurityService.currentUser
		if (!patientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'patient.label', default: 'Patient')])
			redirect(uri: '/')
			return
		}
		
		if(params.mobile) {
			def allergies = [:]
			
			patientInstance.allergies.each { it ->
				allergies.put(it.allergy, it.reaction)
			}
			
			render(contentType: "text/json") {
				patient(identification: patientInstance.identification, firstName: patientInstance.firstName,
					birthDate: patientInstance.birthDate, gender: patientInstance.gender, allergies: allergies)
			}
			return
		}

		render(view: "show", model: [patientInstance: patientInstance])
	}

	
    def show(Long id) {
        def patientInstance = Patient.get(id)
        if (!patientInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'patient.label', default: 'Patient'), id])
            redirect(action: "list")
            return
        }		

        [patientInstance: patientInstance]
    }
	
	
	def showIdentification() {
		def patientInstance = Patient.findByIdentification(params.patientIdentification)
		def staffInstance = Staff.get(params.id)
		
		if (!staffInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'staff.label', default: 'Staff'), params.staffIdentification])
			redirect(uri: "/")
			return
		}
		
		if (!patientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'patient.label', default: 'Patient'), params.patientIdentification])
			redirect(controller: 'staff', action: "show", id: staffInstance.id)
			return
		}
		
		redirect (action: "show", id: patientInstance.id)
	}

    def edit(Long id) {
        def patientInstance = Patient.get(id)
        if (!patientInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'patient.label', default: 'Patient'), id])
            redirect(action: "list")
            return
        }

        [patientInstance: patientInstance]
    }

    def update(Long id, Long version) {
        def patientInstance = Patient.get(id)
        if (!patientInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'patient.label', default: 'Patient'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (patientInstance.version > version) {
                patientInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'patient.label', default: 'Patient')] as Object[],
                          "Another user has updated this Patient while you were editing")
                render(view: "edit", model: [patientInstance: patientInstance])
                return
            }
        }

        patientInstance.properties = params

        if (!patientInstance.save(flush: true)) {
            render(view: "edit", model: [patientInstance: patientInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'patient.label', default: 'Patient'), patientInstance.id])
        redirect(action: "show", id: patientInstance.id)
    }
}
