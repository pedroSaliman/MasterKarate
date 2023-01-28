Feature: To create the user Job entry in the application
  Use POST /api/users to create job entry in the application

  Background: Create and Initialize base Url
    Given url 'https://reqres.in'

  Scenario: To create the Job Entry in JSON format
    Given path '/api/users'
    And request  {"name": "morpheus","job": "leader"}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And print response
    And match response.name == "#present"




  Scenario: To create the user Entry in JSON format
    Given path '/api/users'
    * def body = read("data/user.json")
    And request body
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And print response
    And match response.job == "#present"



  Scenario: To create the Job Entry in JSON format with embedded expression
    Given path '/api/users'
    * def name = 'walled'
    * def job = 'tester'

    And request { name:#(name),job:#(job)}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And print response
    And match response.job == "#present"

