package webnico



import org.junit.*
import grails.test.mixin.*

@TestFor(TableLoginController)
@Mock(TableLogin)
class TableLoginControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/tableLogin/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tableLoginInstanceList.size() == 0
        assert model.tableLoginInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.tableLoginInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tableLoginInstance != null
        assert view == '/tableLogin/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/tableLogin/show/1'
        assert controller.flash.message != null
        assert TableLogin.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/tableLogin/list'

        populateValidParams(params)
        def tableLogin = new TableLogin(params)

        assert tableLogin.save() != null

        params.id = tableLogin.id

        def model = controller.show()

        assert model.tableLoginInstance == tableLogin
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/tableLogin/list'

        populateValidParams(params)
        def tableLogin = new TableLogin(params)

        assert tableLogin.save() != null

        params.id = tableLogin.id

        def model = controller.edit()

        assert model.tableLoginInstance == tableLogin
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/tableLogin/list'

        response.reset()

        populateValidParams(params)
        def tableLogin = new TableLogin(params)

        assert tableLogin.save() != null

        // test invalid parameters in update
        params.id = tableLogin.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/tableLogin/edit"
        assert model.tableLoginInstance != null

        tableLogin.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/tableLogin/show/$tableLogin.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        tableLogin.clearErrors()

        populateValidParams(params)
        params.id = tableLogin.id
        params.version = -1
        controller.update()

        assert view == "/tableLogin/edit"
        assert model.tableLoginInstance != null
        assert model.tableLoginInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/tableLogin/list'

        response.reset()

        populateValidParams(params)
        def tableLogin = new TableLogin(params)

        assert tableLogin.save() != null
        assert TableLogin.count() == 1

        params.id = tableLogin.id

        controller.delete()

        assert TableLogin.count() == 0
        assert TableLogin.get(tableLogin.id) == null
        assert response.redirectedUrl == '/tableLogin/list'
    }
}
