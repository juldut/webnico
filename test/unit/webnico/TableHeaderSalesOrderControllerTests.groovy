package webnico



import org.junit.*
import grails.test.mixin.*

@TestFor(TableHeaderSalesOrderController)
@Mock(TableHeaderSalesOrder)
class TableHeaderSalesOrderControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/tableHeaderSalesOrder/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tableHeaderSalesOrderInstanceList.size() == 0
        assert model.tableHeaderSalesOrderInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.tableHeaderSalesOrderInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tableHeaderSalesOrderInstance != null
        assert view == '/tableHeaderSalesOrder/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/tableHeaderSalesOrder/show/1'
        assert controller.flash.message != null
        assert TableHeaderSalesOrder.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/tableHeaderSalesOrder/list'

        populateValidParams(params)
        def tableHeaderSalesOrder = new TableHeaderSalesOrder(params)

        assert tableHeaderSalesOrder.save() != null

        params.id = tableHeaderSalesOrder.id

        def model = controller.show()

        assert model.tableHeaderSalesOrderInstance == tableHeaderSalesOrder
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/tableHeaderSalesOrder/list'

        populateValidParams(params)
        def tableHeaderSalesOrder = new TableHeaderSalesOrder(params)

        assert tableHeaderSalesOrder.save() != null

        params.id = tableHeaderSalesOrder.id

        def model = controller.edit()

        assert model.tableHeaderSalesOrderInstance == tableHeaderSalesOrder
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/tableHeaderSalesOrder/list'

        response.reset()

        populateValidParams(params)
        def tableHeaderSalesOrder = new TableHeaderSalesOrder(params)

        assert tableHeaderSalesOrder.save() != null

        // test invalid parameters in update
        params.id = tableHeaderSalesOrder.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/tableHeaderSalesOrder/edit"
        assert model.tableHeaderSalesOrderInstance != null

        tableHeaderSalesOrder.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/tableHeaderSalesOrder/show/$tableHeaderSalesOrder.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        tableHeaderSalesOrder.clearErrors()

        populateValidParams(params)
        params.id = tableHeaderSalesOrder.id
        params.version = -1
        controller.update()

        assert view == "/tableHeaderSalesOrder/edit"
        assert model.tableHeaderSalesOrderInstance != null
        assert model.tableHeaderSalesOrderInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/tableHeaderSalesOrder/list'

        response.reset()

        populateValidParams(params)
        def tableHeaderSalesOrder = new TableHeaderSalesOrder(params)

        assert tableHeaderSalesOrder.save() != null
        assert TableHeaderSalesOrder.count() == 1

        params.id = tableHeaderSalesOrder.id

        controller.delete()

        assert TableHeaderSalesOrder.count() == 0
        assert TableHeaderSalesOrder.get(tableHeaderSalesOrder.id) == null
        assert response.redirectedUrl == '/tableHeaderSalesOrder/list'
    }
}
