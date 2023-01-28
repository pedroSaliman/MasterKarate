Feature: To validate the GET End response from file
  To validate the get end point response from extenal file

  Background: Setup the base url
    Given url 'https://reqres.in'

  Scenario: To get the data in JSON format and validate from file
    Given path '/api/users/2'
    And header Accept = 'application/json'
    When method get
    Then status 200
    # Create a variable to store the data from external file
    * def actualResponse = read("../JsonResponse.json")
    And print "File ==> ", actualResponse
    And match response == actualResponse


