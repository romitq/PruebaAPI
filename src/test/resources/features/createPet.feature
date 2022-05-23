Feature: Creación de mascota usando Post

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: crear 1 mascota
    * path '/pet'
    * request
    """
      {
          "id": 0,
          "category": {
            "id": 0,
            "name": "perritos"
          },
          "name": "firulai",
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
    * method post
    * status 200


  Scenario Outline: crear VARIAS mascotas
    * path '/pet'
    * request
    """
      {
        "id": <id>,
        "category": {
          "id": <categoryId>,
          "name": "<categoryName>"
        },
        "name": "<name>",
        "photoUrls": [
          "<photoUrls>"
        ],
        "tags": [
          {
            "id": <tagsId>,
            "name": "<tagsName>"
          }
        ],
        "status": "<status>"
      }
    """
    * method post
    * status 200

    Examples:
      | id | categoryId | categoryName | name    | photoUrls | tagsId | tagsName | status    |
      | 0  | 0          | perritos     | docky   | foto.jpg  | 0      | mascotas | available |
      | 0  | 0          | aves         | lorito  | foto.jpg  | 0      | mascotas | pending   |
      | 0  | 0          | felinos      | gatito  | foto.jpg  | 0      | mascotas | sold      |