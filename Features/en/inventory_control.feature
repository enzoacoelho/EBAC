Feature: Inventory Control

  Background: 
    Given I access the "Polo Shirt" page which has 3 units in stock

  Scenario Outline: Purchase within stock limits
    When I add <quantity> units to the cart
    Then the system should allow me to proceed to checkout

    Examples:
      | quantity |
      | 1        |
      | 3        |

  Scenario Outline: Purchase attempt exceeding stock
    When I try to add <exceeding_quantity> units to the cart
    Then an alert message "Only 3 units available in stock" should be displayed

    Examples:
      | exceeding_quantity |
      | 4                  |
      | 10                 |
