package webnico

import org.springframework.dao.DataIntegrityViolationException
import grails.converters.JSON

class TableHeaderSalesOrderController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tableHeaderSalesOrderInstanceList: TableHeaderSalesOrder.list(params), tableHeaderSalesOrderInstanceTotal: TableHeaderSalesOrder.count()]
    }

    def create() {
		def tempMasterSalesman = TableMasterSalesman.executeQuery("SELECT new map(id as id, namaSalesman as namaSalesman) FROM ${TableMasterSalesman.name}")
		
        // log.error(tempMasterSalesman as JSON)

        def tempHDSO = TableHeaderSalesOrder.get("NMSO13090361")
        // def tempHDSO = TableHeaderSalesOrder.get(1)
        log.error(tempHDSO as JSON)

        

        [tableHeaderSalesOrderInstance: new TableHeaderSalesOrder(params), masterSalesman : tempMasterSalesman]
    }

    def save() {
        def tableHeaderSalesOrderInstance = new TableHeaderSalesOrder(params)
        if (!tableHeaderSalesOrderInstance.save(flush: true)) {
            render(view: "create", model: [tableHeaderSalesOrderInstance: tableHeaderSalesOrderInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder'), tableHeaderSalesOrderInstance.id])
        redirect(action: "show", id: tableHeaderSalesOrderInstance.id)
    }

    def show(String id) {
        def tableHeaderSalesOrderInstance = TableHeaderSalesOrder.get(id)
        if (!tableHeaderSalesOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder'), id])
            redirect(action: "list")
            return
        }

        [tableHeaderSalesOrderInstance: tableHeaderSalesOrderInstance]
    }

    def edit(Long id) {
        def tableHeaderSalesOrderInstance = TableHeaderSalesOrder.get(id)
        if (!tableHeaderSalesOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder'), id])
            redirect(action: "list")
            return
        }

        [tableHeaderSalesOrderInstance: tableHeaderSalesOrderInstance]
    }

    def update(Long id, Long version) {
        def tableHeaderSalesOrderInstance = TableHeaderSalesOrder.get(id)
        if (!tableHeaderSalesOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tableHeaderSalesOrderInstance.version > version) {
                tableHeaderSalesOrderInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder')] as Object[],
                          "Another user has updated this TableHeaderSalesOrder while you were editing")
                render(view: "edit", model: [tableHeaderSalesOrderInstance: tableHeaderSalesOrderInstance])
                return
            }
        }

        tableHeaderSalesOrderInstance.properties = params

        if (!tableHeaderSalesOrderInstance.save(flush: true)) {
            render(view: "edit", model: [tableHeaderSalesOrderInstance: tableHeaderSalesOrderInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder'), tableHeaderSalesOrderInstance.id])
        redirect(action: "show", id: tableHeaderSalesOrderInstance.id)
    }

    def delete(Long id) {
        def tableHeaderSalesOrderInstance = TableHeaderSalesOrder.get(id)
        if (!tableHeaderSalesOrderInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder'), id])
            redirect(action: "list")
            return
        }

        try {
            tableHeaderSalesOrderInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tableHeaderSalesOrder.label', default: 'TableHeaderSalesOrder'), id])
            redirect(action: "show", id: id)
        }
    }
}
