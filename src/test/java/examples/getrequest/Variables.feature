Feature: Variables Creation in Karate Framework

  Background: Create and Initialize Variables
    * def app_name = "Google"
    * def page_lode_timeout = 20

  # <Gherkin Keyword> <def> <Variable_name> = <Value>
  # * <def> <variable_name> = <value>
  Scenario: To create a Variable
    # Use Variable for repeating value
    # Storing the data from a external file
    # In the matcher expression
    # Passing the Data from one feature file to another
    Given def var_age = 25
    And def var_name = "Mohamed"
    Then print "Int Variable ==> ", var_age
    And print "String Variable ==> ", var_name
    * def var_int_2 = var_age + 10
    And print "New Variable ==> ", var_int_2
    And print "BackGroud Section Variabel ==> ", app_name , page_lode_timeout
    

