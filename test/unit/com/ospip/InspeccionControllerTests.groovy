package com.ospip



import org.junit.*


import grails.test.mixin.*

@TestFor(InspeccionController)
@Mock(Inspeccion)
class InspeccionControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/inspeccion/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.inspeccionInstanceList.size() == 0
        assert model.inspeccionInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.inspeccionInstance != null
    }

    void testSave() {
        controller.save()

        assert model.inspeccionInstance != null
        assert view == '/inspeccion/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/inspeccion/show/1'
        assert controller.flash.message != null
        assert Inspeccion.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/inspeccion/list'


        populateValidParams(params)
        def inspeccion = new Inspeccion(params)

        assert inspeccion.save() != null

        params.id = inspeccion.id

        def model = controller.show()

        assert model.inspeccionInstance == inspeccion
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/inspeccion/list'


        populateValidParams(params)
        def inspeccion = new Inspeccion(params)

        assert inspeccion.save() != null

        params.id = inspeccion.id

        def model = controller.edit()

        assert model.inspeccionInstance == inspeccion
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/inspeccion/list'

        response.reset()


        populateValidParams(params)
        def inspeccion = new Inspeccion(params)

        assert inspeccion.save() != null

        // test invalid parameters in update
        params.id = inspeccion.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/inspeccion/edit"
        assert model.inspeccionInstance != null

        inspeccion.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/inspeccion/show/$inspeccion.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        inspeccion.clearErrors()

        populateValidParams(params)
        params.id = inspeccion.id
        params.version = -1
        controller.update()

        assert view == "/inspeccion/edit"
        assert model.inspeccionInstance != null
        assert model.inspeccionInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/inspeccion/list'

        response.reset()

        populateValidParams(params)
        def inspeccion = new Inspeccion(params)

        assert inspeccion.save() != null
        assert Inspeccion.count() == 1

        params.id = inspeccion.id

        controller.delete()

        assert Inspeccion.count() == 0
        assert Inspeccion.get(inspeccion.id) == null
        assert response.redirectedUrl == '/inspeccion/list'
    }
}
