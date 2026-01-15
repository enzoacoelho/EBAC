Feature: Password Reset

  Background:
    Given I am on the EBAC SHOP password reset page

  Scenario Outline: Minimum length validation
    When I try to register the new password <short_password>
    Then an alert message "Your password must be at least 8 characters long" should appear

    Examples: 
      | short_password |
      | "1234567"      |
      | "abc123"       |

  Scenario: Passwords do not match
    When I enter the new password "12345678"
    And I confirm with the password "87654321"
    Then an alert message "Passwords do not match, please try again" should appear

  Scenario: Using a previous password
    Given my current password is "oldpass123"
    When I try to reset it to the same password "oldpass123"
    Then an alert message "Your new password cannot be the same as the old one" should be displayed
