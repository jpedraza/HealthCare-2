package healthcare



import org.junit.*
import grails.test.mixin.*

@TestFor(MedicalTestController)
@Mock(MedicalTest)
class MedicalTestControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/medicalTest/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.medicalTestInstanceList.size() == 0
        assert model.medicalTestInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.medicalTestInstance != null
    }

    void testSave() {
        controller.save()

        assert model.medicalTestInstance != null
        assert view == '/medicalTest/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/medicalTest/show/1'
        assert controller.flash.message != null
        assert MedicalTest.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/medicalTest/list'

        populateValidParams(params)
        def medicalTest = new MedicalTest(params)

        assert medicalTest.save() != null

        params.id = medicalTest.id

        def model = controller.show()

        assert model.medicalTestInstance == medicalTest
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/medicalTest/list'

        populateValidParams(params)
        def medicalTest = new MedicalTest(params)

        assert medicalTest.save() != null

        params.id = medicalTest.id

        def model = controller.edit()

        assert model.medicalTestInstance == medicalTest
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/medicalTest/list'

        response.reset()

        populateValidParams(params)
        def medicalTest = new MedicalTest(params)

        assert medicalTest.save() != null

        // test invalid parameters in update
        params.id = medicalTest.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/medicalTest/edit"
        assert model.medicalTestInstance != null

        medicalTest.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/medicalTest/show/$medicalTest.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        medicalTest.clearErrors()

        populateValidParams(params)
        params.id = medicalTest.id
        params.version = -1
        controller.update()

        assert view == "/medicalTest/edit"
        assert model.medicalTestInstance != null
        assert model.medicalTestInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/medicalTest/list'

        response.reset()

        populateValidParams(params)
        def medicalTest = new MedicalTest(params)

        assert medicalTest.save() != null
        assert MedicalTest.count() == 1

        params.id = medicalTest.id

        controller.delete()

        assert MedicalTest.count() == 0
        assert MedicalTest.get(medicalTest.id) == null
        assert response.redirectedUrl == '/medicalTest/list'
    }
}
