package com.ospip



import org.junit.*


import grails.test.mixin.*

@TestFor(EmpleadoFamiliarController)
@Mock(EmpleadoFamiliar)
class EmpleadoFamiliarControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/empleadoFamiliar/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.empleadoFamiliarInstanceList.size() == 0
        assert model.empleadoFamiliarInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.empleadoFamiliarInstance != null
    }

    void testSave() {
        controller.save()

        assert model.empleadoFamiliarInstance != null
        assert view == '/empleadoFamiliar/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/empleadoFamiliar/show/1'
        assert controller.flash.message != null
        assert EmpleadoFamiliar.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/empleadoFamiliar/list'


        populateValidParams(params)
        def empleadoFamiliar = new EmpleadoFamiliar(params)

        assert empleadoFamiliar.save() != null

        params.id = empleadoFamiliar.id

        def model = controller.show()

        assert model.empleadoFamiliarInstance == empleadoFamiliar
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/empleadoFamiliar/list'


        populateValidParams(params)
        def empleadoFamiliar = new EmpleadoFamiliar(params)

        assert empleadoFamiliar.save() != null

        params.id = empleadoFamiliar.id

        def model = controller.edit()

        assert model.empleadoFamiliarInstance == empleadoFamiliar
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/empleadoFamiliar/list'

        response.reset()


        populateValidParams(params)
        def empleadoFamiliar = new EmpleadoFamiliar(params)

        assert empleadoFamiliar.save() != null

        // test invalid parameters in update
        params.id = empleadoFamiliar.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/empleadoFamiliar/edit"
        assert model.empleadoFamiliarInstance != null

        empleadoFamiliar.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/empleadoFamiliar/show/$empleadoFamiliar.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        empleadoFamiliar.clearErrors()

        populateValidParams(params)
        params.id = empleadoFamiliar.id
        params.version = -1
        controller.update()

        assert view == "/empleadoFamiliar/edit"
        assert model.empleadoFamiliarInstance != null
        assert model.empleadoFamiliarInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/empleadoFamiliar/list'

        response.reset()

        populateValidParams(params)
        def empleadoFamiliar = new EmpleadoFamiliar(params)

        assert empleadoFamiliar.save() != null
        assert EmpleadoFamiliar.count() == 1

        params.id = empleadoFamiliar.id

        controller.delete()

        assert EmpleadoFamiliar.count() == 0
        assert EmpleadoFamiliar.get(empleadoFamiliar.id) == null
        assert response.redirectedUrl == '/empleadoFamiliar/list'
    }
}
