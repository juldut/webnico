package webnico



import org.junit.*
import grails.test.mixin.*

@TestFor(MahasiswaController)
@Mock(Mahasiswa)
class MahasiswaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/mahasiswa/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.mahasiswaInstanceList.size() == 0
        assert model.mahasiswaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.mahasiswaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.mahasiswaInstance != null
        assert view == '/mahasiswa/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/mahasiswa/show/1'
        assert controller.flash.message != null
        assert Mahasiswa.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/mahasiswa/list'

        populateValidParams(params)
        def mahasiswa = new Mahasiswa(params)

        assert mahasiswa.save() != null

        params.id = mahasiswa.id

        def model = controller.show()

        assert model.mahasiswaInstance == mahasiswa
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/mahasiswa/list'

        populateValidParams(params)
        def mahasiswa = new Mahasiswa(params)

        assert mahasiswa.save() != null

        params.id = mahasiswa.id

        def model = controller.edit()

        assert model.mahasiswaInstance == mahasiswa
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/mahasiswa/list'

        response.reset()

        populateValidParams(params)
        def mahasiswa = new Mahasiswa(params)

        assert mahasiswa.save() != null

        // test invalid parameters in update
        params.id = mahasiswa.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/mahasiswa/edit"
        assert model.mahasiswaInstance != null

        mahasiswa.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/mahasiswa/show/$mahasiswa.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        mahasiswa.clearErrors()

        populateValidParams(params)
        params.id = mahasiswa.id
        params.version = -1
        controller.update()

        assert view == "/mahasiswa/edit"
        assert model.mahasiswaInstance != null
        assert model.mahasiswaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/mahasiswa/list'

        response.reset()

        populateValidParams(params)
        def mahasiswa = new Mahasiswa(params)

        assert mahasiswa.save() != null
        assert Mahasiswa.count() == 1

        params.id = mahasiswa.id

        controller.delete()

        assert Mahasiswa.count() == 0
        assert Mahasiswa.get(mahasiswa.id) == null
        assert response.redirectedUrl == '/mahasiswa/list'
    }
}
