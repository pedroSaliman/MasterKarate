Feature: to get data from another feature file
  Scenario: get the response and print from another feature file
    * def getemail = call read('get.feature')
    * def email = getemail.response.data.email
    * print email
    And match email == '#present'