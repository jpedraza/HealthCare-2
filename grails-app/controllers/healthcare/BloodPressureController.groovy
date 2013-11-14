package healthcare

import org.springframework.dao.DataIntegrityViolationException

class BloodPressureController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [bloodPressureInstanceList: BloodPressure.list(params), bloodPressureInstanceTotal: BloodPressure.count()]
    }

    def create() {
        [bloodPressureInstance: new BloodPressure(params)]
    }

    def save() {
        def bloodPressureInstance = new BloodPressure(params)
        if (!bloodPressureInstance.save(flush: true)) {
            render(view: "create", model: [bloodPressureInstance: bloodPressureInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'bloodPressure.label', default: 'BloodPressure'), bloodPressureInstance.id])
        redirect(action: "show", id: bloodPressureInstance.id)
    }

    def show(Long id) {
        def bloodPressureInstance = BloodPressure.get(id)
        if (!bloodPressureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bloodPressure.label', default: 'BloodPressure'), id])
            redirect(action: "list")
            return
        }

        [bloodPressureInstance: bloodPressureInstance]
    }

    def edit(Long id) {
        def bloodPressureInstance = BloodPressure.get(id)
        if (!bloodPressureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bloodPressure.label', default: 'BloodPressure'), id])
            redirect(action: "list")
            return
        }

        [bloodPressureInstance: bloodPressureInstance]
    }

    def update(Long id, Long version) {
        def bloodPressureInstance = BloodPressure.get(id)
        if (!bloodPressureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bloodPressure.label', default: 'BloodPressure'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (bloodPressureInstance.version > version) {
                bloodPressureInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'bloodPressure.label', default: 'BloodPressure')] as Object[],
                          "Another user has updated this BloodPressure while you were editing")
                render(view: "edit", model: [bloodPressureInstance: bloodPressureInstance])
                return
            }
        }

        bloodPressureInstance.properties = params

        if (!bloodPressureInstance.save(flush: true)) {
            render(view: "edit", model: [bloodPressureInstance: bloodPressureInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'bloodPressure.label', default: 'BloodPressure'), bloodPressureInstance.id])
        redirect(action: "show", id: bloodPressureInstance.id)
    }

    def delete(Long id) {
        def bloodPressureInstance = BloodPressure.get(id)
        if (!bloodPressureInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bloodPressure.label', default: 'BloodPressure'), id])
            redirect(action: "list")
            return
        }

        try {
            bloodPressureInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'bloodPressure.label', default: 'BloodPressure'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'bloodPressure.label', default: 'BloodPressure'), id])
            redirect(action: "show", id: id)
        }
    }
}
