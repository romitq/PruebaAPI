Feature: Eliminar mascotas

  Scenario: Eliminar una mascota
    * url 'https://petstore.swagger.io/v2'
    * path '/pet/' + '9223372000001119377'
    * method DELETE
    * status 200