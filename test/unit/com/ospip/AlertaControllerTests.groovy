package com.ospip



import org.junit.*
import grails.test.mixin.*

@TestFor(AlertaController)
@Mock(Alerta)
class AlertaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/alerta/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.alertaInstanceList.size() == 0
        assert model.alertaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.alertaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.alertaInstance != null
        assert view == '/alerta/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/alerta/show/1'
        assert controller.flash.message != null
        assert Alerta.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/alerta/list'


        populateValidParams(params)
        def alerta = new Alerta(params)

        assert alerta.save() != null

        params.id = alerta.id

        def model = controller.show()

        assert model.alertaInstance == alerta
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/alerta/list'


        populateValidParams(params)
        def alerta = new Alerta(params)

        assert alerta.save() != null

        params.id = alerta.id

        def model = controller.edit()

        assert model.alertaInstance == alerta
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/alerta/list'

        response.reset()


        populateValidParams(params)
        def alerta = new Alerta(params)

        assert alerta.save() != null

        // test invalid parameters in update
        params.id = alerta.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/alerta/edit"
        assert model.alertaInstance != null

        alerta.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/alerta/show/$alerta.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        alerta.clearErrors()

        populateValidParams(params)
        params.id = alerta.id
        params.version = -1
        controller.update()

        assert view == "/alerta/edit"
        assert model.alertaInstance != null
        assert model.alertaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/alerta/list'

        response.reset()

        populateValidParams(params)
        def alerta = new Alerta(params)

        assert alerta.save() != null
        assert Alerta.count() == 1

        params.id = alerta.id

        controller.delete()

        assert Alerta.count() == 0
        assert Alerta.get(alerta.id) == null
        assert response.redirectedUrl == '/alerta/list'
    }
}
