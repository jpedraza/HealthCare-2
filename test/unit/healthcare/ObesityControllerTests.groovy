package healthcare



import org.junit.*
import grails.test.mixin.*

@TestFor(ObesityController)
@Mock(Obesity)
class ObesityControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/obesity/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.obesityInstanceList.size() == 0
        assert model.obesityInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.obesityInstance != null
    }

    void testSave() {
        controller.save()

        assert model.obesityInstance != null
        assert view == '/obesity/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/obesity/show/1'
        assert controller.flash.message != null
        assert Obesity.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/obesity/list'

        populateValidParams(params)
        def obesity = new Obesity(params)

        assert obesity.save() != null

        params.id = obesity.id

        def model = controller.show()

        assert model.obesityInstance == obesity
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/obesity/list'

        populateValidParams(params)
        def obesity = new Obesity(params)

        assert obesity.save() != null

        params.id = obesity.id

        def model = controller.edit()

        assert model.obesityInstance == obesity
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/obesity/list'

        response.reset()

        populateValidParams(params)
        def obesity = new Obesity(params)

        assert obesity.save() != null

        // test invalid parameters in update
        params.id = obesity.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/obesity/edit"
        assert model.obesityInstance != null

        obesity.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/obesity/show/$obesity.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        obesity.clearErrors()

        populateValidParams(params)
        params.id = obesity.id
        params.version = -1
        controller.update()

        assert view == "/obesity/edit"
        assert model.obesityInstance != null
        assert model.obesityInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/obesity/list'

        response.reset()

        populateValidParams(params)
        def obesity = new Obesity(params)

        assert obesity.save() != null
        assert Obesity.count() == 1

        params.id = obesity.id

        controller.delete()

        assert Obesity.count() == 0
        assert Obesity.get(obesity.id) == null
        assert response.redirectedUrl == '/obesity/list'
    }
}
