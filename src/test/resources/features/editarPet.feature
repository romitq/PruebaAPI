Feature: Editar mascotas

  Scenario: Editar una mascota
    * url 'https://petstore.swagger.io/v2'
    * path '/pet'
    * request

    """
    {
      "id": 9223372000001119377,
      "category": {
        "id": 0,
        "name": "conejos"
      },
      "name": "RABIT",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "available"
    }
    """

    * method PUT
    * status 200