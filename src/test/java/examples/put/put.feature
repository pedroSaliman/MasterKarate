Feature: To update piece the user entry in the application

  Background: Create and Initialize base Url
    Given url 'https://reqres.in'

  Scenario: To update the user in JSON format
    Given path '/api/users/2'
    And request  {"name": "morpheus","job": "tester"}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method put
    And status 200
    And print response
    And match response.name == "#present"

#


  Scenario: To update the user Entry in JSON format
    Given path '/api/users/2'
    * def body = read("data/user.json")
    * def schema = read("data/schema.json")

    And request body
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method put
    And status 200
    And print response
    And match response.job == "#present"
    And match response == schema
