Feature: Validate the JSON schema
  To validate the JSON schema for POST /api/users

  Background: Create and Initialize base Url
    Given url 'https://reqres.in'

  Scenario: To create the Job Entry in JSON format
    Given path '/api/users'
    * def body = read("data/user.json")
    And request body
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And match response ==
      """
      {
      "name": '#string',
      "job": '#string',
      "id":'#string',
      "createdAt":'#string'

      }
      """


  Scenario: To create the user Entry in JSON format
    Given path '/api/users'
    * def body = read("data/user.json")
    * def schema = read("data/schema.json")
    And request body
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And match response == schema

