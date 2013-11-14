package healthcare



import org.junit.*
import grails.test.mixin.*

@TestFor(AllergyController)
@Mock(Allergy)
class AllergyControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/allergy/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.allergyInstanceList.size() == 0
        assert model.allergyInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.allergyInstance != null
    }

    void testSave() {
        controller.save()

        assert model.allergyInstance != null
        assert view == '/allergy/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/allergy/show/1'
        assert controller.flash.message != null
        assert Allergy.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/allergy/list'

        populateValidParams(params)
        def allergy = new Allergy(params)

        assert allergy.save() != null

        params.id = allergy.id

        def model = controller.show()

        assert model.allergyInstance == allergy
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/allergy/list'

        populateValidParams(params)
        def allergy = new Allergy(params)

        assert allergy.save() != null

        params.id = allergy.id

        def model = controller.edit()

        assert model.allergyInstance == allergy
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/allergy/list'

        response.reset()

        populateValidParams(params)
        def allergy = new Allergy(params)

        assert allergy.save() != null

        // test invalid parameters in update
        params.id = allergy.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/allergy/edit"
        assert model.allergyInstance != null

        allergy.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/allergy/show/$allergy.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        allergy.clearErrors()

        populateValidParams(params)
        params.id = allergy.id
        params.version = -1
        controller.update()

        assert view == "/allergy/edit"
        assert model.allergyInstance != null
        assert model.allergyInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/allergy/list'

        response.reset()

        populateValidParams(params)
        def allergy = new Allergy(params)

        assert allergy.save() != null
        assert Allergy.count() == 1

        params.id = allergy.id

        controller.delete()

        assert Allergy.count() == 0
        assert Allergy.get(allergy.id) == null
        assert response.redirectedUrl == '/allergy/list'
    }
}
