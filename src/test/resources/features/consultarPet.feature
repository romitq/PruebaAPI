Feature: Consultar mascotas

  Scenario: Consultar una mascota
    * url 'https://petstore.swagger.io/v2'
    * path '/pet/' + '9223372016900015370'
    * method GET
    * status 200





