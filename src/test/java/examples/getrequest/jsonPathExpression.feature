Feature: To use the JSON path expression

  Background: Setup the Base path
    Given url 'https://reqres.in'

  Scenario: To get the value of property using json path expression
    Given path '/api/users/2'
    When method get
    Then status 200
    # karate.jsonPath(doc,jsonPathExpression)

    * def email = karate.jsonPath(response,"$..data.email")
    * def first_name = karate.jsonPath(response,"$..data.first_name")
    * def last_name = karate.jsonPath(response,"$..data.last_name")

    And match karate.jsonPath(response,"$..data.email") == email
    And match karate.jsonPath(response,"$..data.first_name") == first_name
    And match karate.jsonPath(response,"$..data.last_name") == last_name

    And print "Email ==> ", email
    And print "FirstName ==> ", first_name
    And print "LastName ==> ", last_name
