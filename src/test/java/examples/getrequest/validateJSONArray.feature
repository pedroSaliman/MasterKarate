Feature: To validate the GET End point
  To validate the get end point response

  Background: Setup the base url
    Given url 'https://reqres.in'

  Scenario: To get the data in JSON format
    Given path '/api/users/2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And match response.data.email == "janet.weaver@reqres.in"

    And match response.data.first_name == "Janet"
    #validate the size of array
#    And match response.data == '#[6]'

    # Contains keyword
   And match response.data[*] contains ['Janet','janet.weaver@reqres.in']
   And match response.support[*] contains ['To keep ReqRes free, contributions towards server costs are appreciated!']

  Scenario: To get the data in JSON format and validate using fuzzy matcher
    Given path '/api/users/2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And match response.data.email == '#present'
    And match response.data.first_name == '#notnull'

    And match response.data.last_name == '#string'
    And match response.data.id == '#number'
    And match response.data =='#object'
    And match response.support =='#object'

#    # Complex Fuzzy matcher
    And match response.data.id == '#? _ > 1'
    And match response.data.email == '#string? _.length > 5'
#