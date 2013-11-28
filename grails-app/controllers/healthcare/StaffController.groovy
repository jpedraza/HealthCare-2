package healthcare

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.dao.DataIntegrityViolationException

	
@Secured(['ROLE_ADMIN'])
class StaffController {
	def springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def create() {
        [staffInstance: new Staff(params)]
    }

    def save() {
        def staffInstance = new Staff(params)
        if (!staffInstance.save(flush: true)) {
            render(view: "create", model: [staffInstance: staffInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'staff.label', default: 'Staff'), staffInstance.id])
        redirect(action: "show", id: staffInstance.id)
    }

    def show(Long id) {
		System.out.println params
        def staffInstance = Staff.get(id)
        if (!staffInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'staff.label', default: 'Staff'), id])
            redirect(action: "list")
            return
        }

        [staffInstance: staffInstance]
    }
	
	
	def showCurrent() {
		def staffInstance = (Staff)springSecurityService.currentUser
		if (!staffInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'staff.label', default: 'Staff')])
			redirect(uri: '/')
			return
		}

		render(view: "show", model: [staffInstance: staffInstance])
	}

    def edit(Long id) {
        def staffInstance = Staff.get(id)
        if (!staffInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'staff.label', default: 'Staff'), id])
            redirect(action: "list")
            return
        }

        [staffInstance: staffInstance]
    }

    def update(Long id, Long version) {
        def staffInstance = Staff.get(id)
        if (!staffInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'staff.label', default: 'Staff'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (staffInstance.version > version) {
                staffInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'staff.label', default: 'Staff')] as Object[],
                          "Another user has updated this Staff while you were editing")
                render(view: "edit", model: [staffInstance: staffInstance])
                return
            }
        }

        staffInstance.properties = params

        if (!staffInstance.save(flush: true)) {
            render(view: "edit", model: [staffInstance: staffInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'staff.label', default: 'Staff'), staffInstance.id])
        redirect(action: "show", id: staffInstance.id)
    }
}
