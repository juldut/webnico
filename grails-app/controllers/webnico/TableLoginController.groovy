package webnico

import org.springframework.dao.DataIntegrityViolationException
import grails.converters.JSON

class TableLoginController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tableLoginInstanceList: TableLogin.list(params), tableLoginInstanceTotal: TableLogin.count()]
    }

    def create() {
        def rowLogin = TableLogin.get("supervisor")
        log.error(rowLogin as JSON)

        [tableLoginInstance: new TableLogin(params)]
    }

    def save() {
        def tableLoginInstance = new TableLogin(params)
        if (!tableLoginInstance.save(flush: true)) {
            render(view: "create", model: [tableLoginInstance: tableLoginInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tableLogin.label', default: 'TableLogin'), tableLoginInstance.id])
        redirect(action: "show", id: tableLoginInstance.id)
    }

    def show(Long id) {
        def tableLoginInstance = TableLogin.get(id)
        if (!tableLoginInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableLogin.label', default: 'TableLogin'), id])
            redirect(action: "list")
            return
        }

        [tableLoginInstance: tableLoginInstance]
    }

    def edit(Long id) {
        def tableLoginInstance = TableLogin.get(id)
        if (!tableLoginInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableLogin.label', default: 'TableLogin'), id])
            redirect(action: "list")
            return
        }

        [tableLoginInstance: tableLoginInstance]
    }

    def update(Long id, Long version) {
        def tableLoginInstance = TableLogin.get(id)
        if (!tableLoginInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableLogin.label', default: 'TableLogin'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tableLoginInstance.version > version) {
                tableLoginInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tableLogin.label', default: 'TableLogin')] as Object[],
                          "Another user has updated this TableLogin while you were editing")
                render(view: "edit", model: [tableLoginInstance: tableLoginInstance])
                return
            }
        }

        tableLoginInstance.properties = params

        if (!tableLoginInstance.save(flush: true)) {
            render(view: "edit", model: [tableLoginInstance: tableLoginInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tableLogin.label', default: 'TableLogin'), tableLoginInstance.id])
        redirect(action: "show", id: tableLoginInstance.id)
    }

    def delete(Long id) {
        def tableLoginInstance = TableLogin.get(id)
        if (!tableLoginInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableLogin.label', default: 'TableLogin'), id])
            redirect(action: "list")
            return
        }

        try {
            tableLoginInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tableLogin.label', default: 'TableLogin'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tableLogin.label', default: 'TableLogin'), id])
            redirect(action: "show", id: id)
        }
    }
}
