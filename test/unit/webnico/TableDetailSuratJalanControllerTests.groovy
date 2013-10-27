package webnico



import org.junit.*
import grails.test.mixin.*

@TestFor(TableDetailSuratJalanController)
@Mock(TableDetailSuratJalan)
class TableDetailSuratJalanControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/tableDetailSuratJalan/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tableDetailSuratJalanInstanceList.size() == 0
        assert model.tableDetailSuratJalanInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.tableDetailSuratJalanInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tableDetailSuratJalanInstance != null
        assert view == '/tableDetailSuratJalan/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/tableDetailSuratJalan/show/1'
        assert controller.flash.message != null
        assert TableDetailSuratJalan.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/tableDetailSuratJalan/list'

        populateValidParams(params)
        def tableDetailSuratJalan = new TableDetailSuratJalan(params)

        assert tableDetailSuratJalan.save() != null

        params.id = tableDetailSuratJalan.id

        def model = controller.show()

        assert model.tableDetailSuratJalanInstance == tableDetailSuratJalan
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/tableDetailSuratJalan/list'

        populateValidParams(params)
        def tableDetailSuratJalan = new TableDetailSuratJalan(params)

        assert tableDetailSuratJalan.save() != null

        params.id = tableDetailSuratJalan.id

        def model = controller.edit()

        assert model.tableDetailSuratJalanInstance == tableDetailSuratJalan
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/tableDetailSuratJalan/list'

        response.reset()

        populateValidParams(params)
        def tableDetailSuratJalan = new TableDetailSuratJalan(params)

        assert tableDetailSuratJalan.save() != null

        // test invalid parameters in update
        params.id = tableDetailSuratJalan.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/tableDetailSuratJalan/edit"
        assert model.tableDetailSuratJalanInstance != null

        tableDetailSuratJalan.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/tableDetailSuratJalan/show/$tableDetailSuratJalan.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        tableDetailSuratJalan.clearErrors()

        populateValidParams(params)
        params.id = tableDetailSuratJalan.id
        params.version = -1
        controller.update()

        assert view == "/tableDetailSuratJalan/edit"
        assert model.tableDetailSuratJalanInstance != null
        assert model.tableDetailSuratJalanInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/tableDetailSuratJalan/list'

        response.reset()

        populateValidParams(params)
        def tableDetailSuratJalan = new TableDetailSuratJalan(params)

        assert tableDetailSuratJalan.save() != null
        assert TableDetailSuratJalan.count() == 1

        params.id = tableDetailSuratJalan.id

        controller.delete()

        assert TableDetailSuratJalan.count() == 0
        assert TableDetailSuratJalan.get(tableDetailSuratJalan.id) == null
        assert response.redirectedUrl == '/tableDetailSuratJalan/list'
    }
}
