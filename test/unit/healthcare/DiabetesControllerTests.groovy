package healthcare



import org.junit.*
import grails.test.mixin.*

@TestFor(DiabetesController)
@Mock(Diabetes)
class DiabetesControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/diabetes/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.diabetesInstanceList.size() == 0
        assert model.diabetesInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.diabetesInstance != null
    }

    void testSave() {
        controller.save()

        assert model.diabetesInstance != null
        assert view == '/diabetes/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/diabetes/show/1'
        assert controller.flash.message != null
        assert Diabetes.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/diabetes/list'

        populateValidParams(params)
        def diabetes = new Diabetes(params)

        assert diabetes.save() != null

        params.id = diabetes.id

        def model = controller.show()

        assert model.diabetesInstance == diabetes
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/diabetes/list'

        populateValidParams(params)
        def diabetes = new Diabetes(params)

        assert diabetes.save() != null

        params.id = diabetes.id

        def model = controller.edit()

        assert model.diabetesInstance == diabetes
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/diabetes/list'

        response.reset()

        populateValidParams(params)
        def diabetes = new Diabetes(params)

        assert diabetes.save() != null

        // test invalid parameters in update
        params.id = diabetes.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/diabetes/edit"
        assert model.diabetesInstance != null

        diabetes.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/diabetes/show/$diabetes.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        diabetes.clearErrors()

        populateValidParams(params)
        params.id = diabetes.id
        params.version = -1
        controller.update()

        assert view == "/diabetes/edit"
        assert model.diabetesInstance != null
        assert model.diabetesInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/diabetes/list'

        response.reset()

        populateValidParams(params)
        def diabetes = new Diabetes(params)

        assert diabetes.save() != null
        assert Diabetes.count() == 1

        params.id = diabetes.id

        controller.delete()

        assert Diabetes.count() == 0
        assert Diabetes.get(diabetes.id) == null
        assert response.redirectedUrl == '/diabetes/list'
    }
}
