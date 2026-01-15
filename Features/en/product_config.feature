Feature: Product Configuration

  Background:
    Given I am on a product page at EBAC SHOP

  Scenario: Selecting mandatory items
    When I select the color "Blue", size "M", and quantity "2"
    And I click on the "Buy" button
    Then the product should be added to the cart with the selected configurations

  Scenario: Clear configurations
    Given I have selected color, size, and quantity
    When I click the "Clear" button
    Then the color, size, and quantity selections should reset to their original state

  Scenario Outline: Validate quantity limit
    When I select the color "Red", size "XL", and quantity <qty>
    Then an alert message "Limit of 10 products per sale exceeded" should be displayed

    Examples:
      | qty |
      | 11  |
      | 20  |
