Feature: Creación de mascotas

  Scenario: Crear una mascota
    * url 'https://petstore.swagger.io/v2'
    * path '/pet'
    * request

    """
    {
      "id": 0,
      "category": {
        "id": 0,
        "name": "perros"
      },
      "name": "COQUITO",
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
    * method POST
    * status 200

  Scenario Outline: Crear varias mascotas
    * url 'https://petstore.swagger.io/v2'
    * path '/pet'
    * request

    """
      {
        "id": <id>,
        "category": {
          "id": 0,
          "name": <nombreCatego>
        },
        "name": <nombreMascota>,
        "photoUrls": [
          "string"
        ],
        "tags": [
          {
            "id": 0,
            "name": "string"
          }
        ],
        "status": <status>
      }
    """
    * method post
    * status <statusCode>

    Examples:
      | id | nombreCatego | nombreMascota | status    | statusCode |
      | 0  | perros       |  DOCKI        | available | 200        |
      | 0  | loros        |  COCO         | pending   | 200        |
      | 0  | gatos        |  PELUSA       | sold      | 200        |