package webnico

import org.springframework.dao.DataIntegrityViolationException

class TableDetailSuratJalanController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tableDetailSuratJalanInstanceList: TableDetailSuratJalan.list(params), tableDetailSuratJalanInstanceTotal: TableDetailSuratJalan.count()]
    }

    def create() {
        [tableDetailSuratJalanInstance: new TableDetailSuratJalan(params)]
    }

    def save() {
        def tableDetailSuratJalanInstance = new TableDetailSuratJalan(params)
        if (!tableDetailSuratJalanInstance.save(flush: true)) {
            render(view: "create", model: [tableDetailSuratJalanInstance: tableDetailSuratJalanInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan'), tableDetailSuratJalanInstance.id])
        redirect(action: "show", id: tableDetailSuratJalanInstance.id)
    }

    def show(Long id) {
        def tableDetailSuratJalanInstance = TableDetailSuratJalan.get(id)
        if (!tableDetailSuratJalanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan'), id])
            redirect(action: "list")
            return
        }

        [tableDetailSuratJalanInstance: tableDetailSuratJalanInstance]
    }

    def edit(Long id) {
        def tableDetailSuratJalanInstance = TableDetailSuratJalan.get(id)
        if (!tableDetailSuratJalanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan'), id])
            redirect(action: "list")
            return
        }

        [tableDetailSuratJalanInstance: tableDetailSuratJalanInstance]
    }

    def update(Long id, Long version) {
        def tableDetailSuratJalanInstance = TableDetailSuratJalan.get(id)
        if (!tableDetailSuratJalanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tableDetailSuratJalanInstance.version > version) {
                tableDetailSuratJalanInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan')] as Object[],
                          "Another user has updated this TableDetailSuratJalan while you were editing")
                render(view: "edit", model: [tableDetailSuratJalanInstance: tableDetailSuratJalanInstance])
                return
            }
        }

        tableDetailSuratJalanInstance.properties = params

        if (!tableDetailSuratJalanInstance.save(flush: true)) {
            render(view: "edit", model: [tableDetailSuratJalanInstance: tableDetailSuratJalanInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan'), tableDetailSuratJalanInstance.id])
        redirect(action: "show", id: tableDetailSuratJalanInstance.id)
    }

    def delete(Long id) {
        def tableDetailSuratJalanInstance = TableDetailSuratJalan.get(id)
        if (!tableDetailSuratJalanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan'), id])
            redirect(action: "list")
            return
        }

        try {
            tableDetailSuratJalanInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tableDetailSuratJalan.label', default: 'TableDetailSuratJalan'), id])
            redirect(action: "show", id: id)
        }
    }
}
