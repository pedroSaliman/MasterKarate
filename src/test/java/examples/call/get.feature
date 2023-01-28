Feature: To test the get end point of the application
  To test different get end point with different data formate supported by the application

  Background: Setup the Base path
    Given url host
    And print '========== This is Background Keyword ================='

  Scenario: To get all the data from application in JSON format
    #Base Path + Context path
    Given path '/api/users/2'
    When method get # Send the get request
  ##  the status code response should be 200
    Then status 200 # the status code response should be 200
    And print response
