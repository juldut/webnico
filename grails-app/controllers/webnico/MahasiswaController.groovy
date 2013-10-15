package webnico

import org.springframework.dao.DataIntegrityViolationException

class MahasiswaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [mahasiswaInstanceList: Mahasiswa.list(params), mahasiswaInstanceTotal: Mahasiswa.count()]
    }

    def create() {
        [mahasiswaInstance: new Mahasiswa(params)]
    }

    def save() {
        def mahasiswaInstance = new Mahasiswa(params)
        if (!mahasiswaInstance.save(flush: true)) {
            render(view: "create", model: [mahasiswaInstance: mahasiswaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'mahasiswa.label', default: 'Mahasiswa'), mahasiswaInstance.id])
        redirect(action: "show", id: mahasiswaInstance.id)
    }

    def show(Long id) {
        def mahasiswaInstance = Mahasiswa.get(id)
        if (!mahasiswaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mahasiswa.label', default: 'Mahasiswa'), id])
            redirect(action: "list")
            return
        }

        [mahasiswaInstance: mahasiswaInstance]
    }

    def edit(Long id) {
        def mahasiswaInstance = Mahasiswa.get(id)
        if (!mahasiswaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mahasiswa.label', default: 'Mahasiswa'), id])
            redirect(action: "list")
            return
        }

        [mahasiswaInstance: mahasiswaInstance]
    }

    def update(Long id, Long version) {
        def mahasiswaInstance = Mahasiswa.get(id)
        if (!mahasiswaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mahasiswa.label', default: 'Mahasiswa'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (mahasiswaInstance.version > version) {
                mahasiswaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'mahasiswa.label', default: 'Mahasiswa')] as Object[],
                          "Another user has updated this Mahasiswa while you were editing")
                render(view: "edit", model: [mahasiswaInstance: mahasiswaInstance])
                return
            }
        }

        mahasiswaInstance.properties = params

        if (!mahasiswaInstance.save(flush: true)) {
            render(view: "edit", model: [mahasiswaInstance: mahasiswaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'mahasiswa.label', default: 'Mahasiswa'), mahasiswaInstance.id])
        redirect(action: "show", id: mahasiswaInstance.id)
    }

    def delete(Long id) {
        def mahasiswaInstance = Mahasiswa.get(id)
        if (!mahasiswaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mahasiswa.label', default: 'Mahasiswa'), id])
            redirect(action: "list")
            return
        }

        try {
            mahasiswaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'mahasiswa.label', default: 'Mahasiswa'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'mahasiswa.label', default: 'Mahasiswa'), id])
            redirect(action: "show", id: id)
        }
    }
}
