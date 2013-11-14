package healthcare



import org.junit.*
import grails.test.mixin.*

@TestFor(BloodPressureController)
@Mock(BloodPressure)
class BloodPressureControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/bloodPressure/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.bloodPressureInstanceList.size() == 0
        assert model.bloodPressureInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.bloodPressureInstance != null
    }

    void testSave() {
        controller.save()

        assert model.bloodPressureInstance != null
        assert view == '/bloodPressure/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/bloodPressure/show/1'
        assert controller.flash.message != null
        assert BloodPressure.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodPressure/list'

        populateValidParams(params)
        def bloodPressure = new BloodPressure(params)

        assert bloodPressure.save() != null

        params.id = bloodPressure.id

        def model = controller.show()

        assert model.bloodPressureInstance == bloodPressure
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodPressure/list'

        populateValidParams(params)
        def bloodPressure = new BloodPressure(params)

        assert bloodPressure.save() != null

        params.id = bloodPressure.id

        def model = controller.edit()

        assert model.bloodPressureInstance == bloodPressure
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/bloodPressure/list'

        response.reset()

        populateValidParams(params)
        def bloodPressure = new BloodPressure(params)

        assert bloodPressure.save() != null

        // test invalid parameters in update
        params.id = bloodPressure.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/bloodPressure/edit"
        assert model.bloodPressureInstance != null

        bloodPressure.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/bloodPressure/show/$bloodPressure.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        bloodPressure.clearErrors()

        populateValidParams(params)
        params.id = bloodPressure.id
        params.version = -1
        controller.update()

        assert view == "/bloodPressure/edit"
        assert model.bloodPressureInstance != null
        assert model.bloodPressureInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/bloodPressure/list'

        response.reset()

        populateValidParams(params)
        def bloodPressure = new BloodPressure(params)

        assert bloodPressure.save() != null
        assert BloodPressure.count() == 1

        params.id = bloodPressure.id

        controller.delete()

        assert BloodPressure.count() == 0
        assert BloodPressure.get(bloodPressure.id) == null
        assert response.redirectedUrl == '/bloodPressure/list'
    }
}
