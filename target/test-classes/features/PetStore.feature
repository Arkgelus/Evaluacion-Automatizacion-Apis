@TODO
  Feature: Gestión de ordenes de la tienda
    @CrearOrden
    Scenario Outline: Crear una nueva orden
      Given dado que estoy en la pagina
      When creo una orden con id<id>, petId<petId>, quantity<quantity>
      Then el código de estado de la respuesta debe ser <codigo>
      And la respuesta debe contener el id<id>, petId<petId>, quantity<quantity>
      Examples:
        | id  | petId | quantity | codigo |
        | 201 | 2     | 3        | 200    |
        | 202 | 5     | 15       | 200    |
        | 203 | 6     | 1        | 200    |
        | 204 | 9     | 9        | 200    |




      @ConsultarOrden
      Scenario Outline: Consultar nueva Orden
        Given dado que estoy en la pagina
        When consulto la orden con el id<id>
        Then el código de estado de la respuesta debe ser <codigo>
        And la respuesta debe contener el id<id>, petId<petId>, quantity<quantity>
        Examples:
        |id|petId|quantity|codigo|
        |201|2   |3       |0   |
        |202|5   |15      |0   |
        |203|6   |1       |200   |
        |204|9   |9       |200   |

