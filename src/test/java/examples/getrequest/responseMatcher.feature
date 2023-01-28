Feature: To validate the GET End point
  To validate the get end point response

  Background: Setup the base url
    Given url 'https://reqres.in'

  Scenario: To get the data in JSON format
    Given path '/api/users/2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response ==
      """
      {
    "data": {
        "id": 2,
        "email": "janet.weaver@reqres.in",
        "first_name": "Janet",
        "last_name": "Weaver",
        "avatar": "https://reqres.in/img/faces/2-image.jpg"
    },
    "support": {
        "url": "https://reqres.in/#support-heading",
        "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
    }
}
      """



  Scenario: To get the data in JSON format and validate using negate condition
    Given path '/api/users/2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response !=
      """
     {
    "emails": {
        "id": 2,
        "email": "janet.weaver@reqres.in",
        "first_name": "Janet",
        "last_name": "Weaver",
        "avatar": "https://reqres.in/img/faces/2-image.jpg"
    },
    "german": {
        "url": "https://reqres.in/#support-heading",
        "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
    }
}
      """

  Scenario: To get the data in JSON format and validate a specific property
    Given path '/api/users/2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And print response
    And match response contains deep {"data": {"email":"janet.weaver@reqres.in"}}
    And match response contains deep {"support":{"text":"To keep ReqRes free, contributions towards server costs are appreciated!"}}
    And match header Content-Type == 'application/json; charset=utf-8'
