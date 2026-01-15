Feature: Platform Login

  Background:
    Given I access the EBAC SHOP authentication page

  Scenario Outline: Valid authentication
    When I enter the username <user>
    And the password <password>
    Then I should be redirected to the checkout or my account screen

    Examples:
      | user                | password    |
      | "john@ebac.com.br"  | "pass123"   |
      | "mary@ebac.com.br"  | "test@123"  |

  Scenario: Non-existent user
    When I enter the username "doesntexist@ebac.com.br"
    And the password "pass123"
    Then an alert message "Invalid username or password" should be displayed
