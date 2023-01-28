Feature: To update piece the user entry in the application

  Background: Create and Initialize base Url
    Given url 'https://reqres.in'

  Scenario: To update the user in JSON format
    Given path '/api/users/2'
    And request  {"name": "morpheus","job": "tester"}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method patch
    And status 200
    And print response
    And match response.name == "#present"




  Scenario: To update the user Entry in JSON format
    Given path '/api/users/2'
    * def body = read("data/user.json")
    And request body
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method patch
    And status 200
    And print response
    And match response.job == "#present"



  Scenario: To update the user in JSON format with embedded expression
    Given path '/api/users/2'
    * def name = 'morpheus'
    * def job = 'zamallek'
    * def schema = read("data/schema.json")

    And request { name:#(name),job:#(job)}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method patch
    And status 200
    And print response
    And match response.job == "#present"
    And match response == schema

