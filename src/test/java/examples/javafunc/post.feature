Feature: to post the data from java function in another file
  Background: Setup the Base path
    Given url host
    And print '========== This is Background Keyword ================='
    * def JavaClass = Java.type('examples.javafunc.Myclass');
    * def payload = JavaClass.body();

  Scenario: To post  the data from java class static method

    Given path '/api/users'
    When method post # Send the get request
    And request payload
  ##  the status code response should be 201
    Then status 201 # the status code response should be 200
    And print response
    And match response.id == "#present"
    * karate.write(response,'output.txt')


