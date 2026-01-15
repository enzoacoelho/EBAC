Feature: Coupon Discount

  Background: 
    Given I have products in the EBAC SHOP cart

  Scenario Outline: Apply coupon successfully
    When I have a total of <value> in the cart
    And I apply the "EBAC10" coupon
    Then the total value should be reduced by 10%

    Examples:
      | value    |
      | "100.00" |
      | "150.00" |

  Scenario Outline: Invalid coupon due to minimum value
    When I have a total of <low_value> in the cart
    And I try to apply the "EBAC10" coupon
    Then an alert message "Coupon only available for purchases over 100 reais" should appear

    Examples:
      | low_value |
      | "99.99"   |
      | "50.00"   |

  Scenario: Misspelled coupon code
    When I try to apply the coupon "EBA10"
    Then an alert message "Invalid coupon" should be displayed
