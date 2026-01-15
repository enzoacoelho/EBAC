Feature: Wishlist

  Background:
    Given I am logged into my account and on a product page

  Scenario: Add product to wishlist
    When I click on the "Add to Wishlist" icon
    Then the product should be listed on my favorites page

  Scenario: Remove product from wishlist
    Given I already have a product in my wishlist
    When I uncheck the favorite icon
    Then the product should be removed from my favorites page
