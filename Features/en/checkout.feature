Feature: Checkout - Registration

  Background:
    Given I am on the EBAC SHOP checkout page

  Scenario: Registration with all mandatory data
    When I fill in all mandatory fields marked with an asterisk
    And I click on "Place Order"
    Then the system should process my order successfully

  Scenario: Registration with invalid email
    When I fill in the email field with "user.domain.com"
    Then the system should display an error message "Invalid email format"

  Scenario: Empty fields at checkout
    When I try to finish the purchase leaving mandatory fields empty
    Then the system should display an alert "Please fill in all mandatory fields"
