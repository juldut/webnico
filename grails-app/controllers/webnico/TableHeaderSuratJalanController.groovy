package webnico

import org.springframework.dao.DataIntegrityViolationException
import grails.converters.JSON

class TableHeaderSuratJalanController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)        

        [tableHeaderSuratJalanInstanceList: TableHeaderSuratJalan.list(params), tableHeaderSuratJalanInstanceTotal: TableHeaderSuratJalan.count()]
    }

    def create() {
        [tableHeaderSuratJalanInstance: new TableHeaderSuratJalan(params)]
    }

    def save() {
        def tableHeaderSuratJalanInstance = new TableHeaderSuratJalan(params)
        if (!tableHeaderSuratJalanInstance.save(flush: true)) {
            render(view: "create", model: [tableHeaderSuratJalanInstance: tableHeaderSuratJalanInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tableHeaderSuratJalan.label', default: 'TableHeaderSuratJalan'), tableHeaderSuratJalanInstance.id])
        redirect(action: "show", id: tableHeaderSuratJalanInstance.id)
    }

    def show(Long id) {
        def tableHeaderSuratJalanInstance = TableHeaderSuratJalan.get(id)

        if (!tableHeaderSuratJalanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableHeaderSuratJalan.label', default: 'TableHeaderSuratJalan'), id])
            redirect(action: "list")
            return
        }

        [tableHeaderSuratJalanInstance: tableHeaderSuratJalanInstance]
    }

    def edit(Long id) {
        def tableHeaderSuratJalanInstance = TableHeaderSuratJalan.get(id)
        if (!tableHeaderSuratJalanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableHeaderSuratJalan.label', default: 'TableHeaderSuratJalan'), id])
            redirect(action: "list")
            return
        }

        [tableHeaderSuratJalanInstance: tableHeaderSuratJalanInstance]
    }

    def update(Long id, Long version) {
        def tableHeaderSuratJalanInstance = TableHeaderSuratJalan.get(id)
        if (!tableHeaderSuratJalanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableHeaderSuratJalan.label', default: 'TableHeaderSuratJalan'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tableHeaderSuratJalanInstance.version > version) {
                tableHeaderSuratJalanInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tableHeaderSuratJalan.label', default: 'TableHeaderSuratJalan')] as Object[],
                          "Another user has updated this TableHeaderSuratJalan while you were editing")
                render(view: "edit", model: [tableHeaderSuratJalanInstance: tableHeaderSuratJalanInstance])
                return
            }
        }

        tableHeaderSuratJalanInstance.properties = params

        if (!tableHeaderSuratJalanInstance.save(flush: true)) {
            render(view: "edit", model: [tableHeaderSuratJalanInstance: tableHeaderSuratJalanInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tableHeaderSuratJalan.label', default: 'TableHeaderSuratJalan'), tableHeaderSuratJalanInstance.id])
        redirect(action: "show", id: tableHeaderSuratJalanInstance.id)
    }

    def delete(Long id) {
        def tableHeaderSuratJalanInstance = TableHeaderSuratJalan.get(id)
        if (!tableHeaderSuratJalanInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableHeaderSuratJalan.label', default: 'TableHeaderSuratJalan'), id])
            redirect(action: "list")
            return
        }

        try {
            tableHeaderSuratJalanInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tableHeaderSuratJalan.label', default: 'TableHeaderSuratJalan'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tableHeaderSuratJalan.label', default: 'TableHeaderSuratJalan'), id])
            redirect(action: "show", id: id)
        }
    }
}
