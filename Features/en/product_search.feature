Feature: Product Search

  Background:
    Given I am on the EBAC SHOP homepage

  Scenario Outline: Search by valid keyword
    When I search for the product <term>
    Then the system should display a list of products related to <term>

    Examples:
      | term         |
      | "Polo Shirt" |
      | "Jeans"      |

  Scenario: Search for non-existent product
    When I search for the product "Ghost Product 123"
    Then the message "No results match your search" should be displayed
