Feature: To create job description in the test application

  Background: Read the data for data driven
    * def testdata = read("testData.csv")

  Scenario Outline: To create job description in the test application <method>
    Given print '<url>'
    Then print '<path>'
    When print '<method>'
    And print '<status>'

    Examples:
      | url                   | path               | method | status |
      | https://reqres.in | /api/users/2 | get    |    200 |
      | https://reqres.in | /api/users?page=2 | get   |    200 |
      | https://reqres.in | /api/users/23 | get    |    404 |

  Scenario Outline: Data Driven for the job description entry - <name>
    Given url 'https://reqres.in'
    And path '/api/users'
    And request {  "name": '#(name)',"job":'#(job)' }
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status <status>

    Examples:
      | name    | job |                | status |
      |  mohamed | tester|            |201 |
      | walled    |  programer|        |201 |
      | kamal | lawyer        |        | 201 |

  Scenario Outline: Data Driven for the job description entry using csv files - <name>
    Given url 'https://reqres.in'
    And path '/api/users'
    And request {  "name": '#(name)',"job": '#(job)'}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status <status>

    Examples:
      #|testdata|
      | read("testData.csv") |
