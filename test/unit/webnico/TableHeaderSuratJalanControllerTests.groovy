package webnico



import org.junit.*
import grails.test.mixin.*

@TestFor(TableHeaderSuratJalanController)
@Mock(TableHeaderSuratJalan)
class TableHeaderSuratJalanControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/tableHeaderSuratJalan/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tableHeaderSuratJalanInstanceList.size() == 0
        assert model.tableHeaderSuratJalanInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.tableHeaderSuratJalanInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tableHeaderSuratJalanInstance != null
        assert view == '/tableHeaderSuratJalan/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/tableHeaderSuratJalan/show/1'
        assert controller.flash.message != null
        assert TableHeaderSuratJalan.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/tableHeaderSuratJalan/list'

        populateValidParams(params)
        def tableHeaderSuratJalan = new TableHeaderSuratJalan(params)

        assert tableHeaderSuratJalan.save() != null

        params.id = tableHeaderSuratJalan.id

        def model = controller.show()

        assert model.tableHeaderSuratJalanInstance == tableHeaderSuratJalan
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/tableHeaderSuratJalan/list'

        populateValidParams(params)
        def tableHeaderSuratJalan = new TableHeaderSuratJalan(params)

        assert tableHeaderSuratJalan.save() != null

        params.id = tableHeaderSuratJalan.id

        def model = controller.edit()

        assert model.tableHeaderSuratJalanInstance == tableHeaderSuratJalan
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/tableHeaderSuratJalan/list'

        response.reset()

        populateValidParams(params)
        def tableHeaderSuratJalan = new TableHeaderSuratJalan(params)

        assert tableHeaderSuratJalan.save() != null

        // test invalid parameters in update
        params.id = tableHeaderSuratJalan.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/tableHeaderSuratJalan/edit"
        assert model.tableHeaderSuratJalanInstance != null

        tableHeaderSuratJalan.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/tableHeaderSuratJalan/show/$tableHeaderSuratJalan.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        tableHeaderSuratJalan.clearErrors()

        populateValidParams(params)
        params.id = tableHeaderSuratJalan.id
        params.version = -1
        controller.update()

        assert view == "/tableHeaderSuratJalan/edit"
        assert model.tableHeaderSuratJalanInstance != null
        assert model.tableHeaderSuratJalanInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/tableHeaderSuratJalan/list'

        response.reset()

        populateValidParams(params)
        def tableHeaderSuratJalan = new TableHeaderSuratJalan(params)

        assert tableHeaderSuratJalan.save() != null
        assert TableHeaderSuratJalan.count() == 1

        params.id = tableHeaderSuratJalan.id

        controller.delete()

        assert TableHeaderSuratJalan.count() == 0
        assert TableHeaderSuratJalan.get(tableHeaderSuratJalan.id) == null
        assert response.redirectedUrl == '/tableHeaderSuratJalan/list'
    }
}
