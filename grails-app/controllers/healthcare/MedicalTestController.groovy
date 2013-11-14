package healthcare

import org.springframework.dao.DataIntegrityViolationException

class MedicalTestController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [medicalTestInstanceList: MedicalTest.list(params), medicalTestInstanceTotal: MedicalTest.count()]
    }

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
        redirect(action: "show", id: medicalTestInstance.id)
    }

    def show(Long id) {
        def medicalTestInstance = MedicalTest.get(id)
        if (!medicalTestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicalTest.label', default: 'MedicalTest'), id])
            redirect(action: "list")
            return
        }

        [medicalTestInstance: medicalTestInstance]
    }

    def edit(Long id) {
        def medicalTestInstance = MedicalTest.get(id)
        if (!medicalTestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicalTest.label', default: 'MedicalTest'), id])
            redirect(action: "list")
            return
        }

        [medicalTestInstance: medicalTestInstance]
    }

    def update(Long id, Long version) {
        def medicalTestInstance = MedicalTest.get(id)
        if (!medicalTestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicalTest.label', default: 'MedicalTest'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (medicalTestInstance.version > version) {
                medicalTestInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'medicalTest.label', default: 'MedicalTest')] as Object[],
                          "Another user has updated this MedicalTest while you were editing")
                render(view: "edit", model: [medicalTestInstance: medicalTestInstance])
                return
            }
        }

        medicalTestInstance.properties = params

        if (!medicalTestInstance.save(flush: true)) {
            render(view: "edit", model: [medicalTestInstance: medicalTestInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'medicalTest.label', default: 'MedicalTest'), medicalTestInstance.id])
        redirect(action: "show", id: medicalTestInstance.id)
    }

    def delete(Long id) {
        def medicalTestInstance = MedicalTest.get(id)
        if (!medicalTestInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medicalTest.label', default: 'MedicalTest'), id])
            redirect(action: "list")
            return
        }

        try {
            medicalTestInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'medicalTest.label', default: 'MedicalTest'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'medicalTest.label', default: 'MedicalTest'), id])
            redirect(action: "show", id: id)
        }
    }
}
