Feature: To test the get end point of the application
  To test different get end point with different data formate supported by the application

  Background: Setup the Base path
    Given url 'https://reqres.in'
    And print '========== This is Background Keyword ================='

 

  Scenario: To get all the data from single resources
    And path '/api/unknown/2'
    And header Accept = 'application/json'
    When method get # Send the get request
    Then status 200 # the status code response should be 200
