Feature: To test the get end point of the application
  To test different get end point with different data formate supported by the application

  Background: Setup the Base path
    Given url 'https://reqres.in'
    And print '========== This is Background Keyword ================='

  Scenario: To delete user

    Given path '/api/users/2'
    When method delete # Send the delete request
    #Then status 204 # the status code response should be 200
    Then status 204 # the status code response should be 204

