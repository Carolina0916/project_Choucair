Feature: A user enters the application, goes to the login link and is located in the registration menu

  Scenario: The user enters an email with an invalid format
    Given I want to register as a member user with the invalid format email
          |ccc@.com|
    When I enter an invalid email and click on create account
    Then the email field is highlighted in red with an "x" at the end

  Scenario: The user enter an email that is already registered
    Given I want to register as a member user with an email that already exists
          |c@c.com|
    When I enter an email tha is already registered and click on create account
    Then a message is displayed indicating that the email is already registered

  Scenario: The user enters a new email that is not registered
    Given I want to register as a member user with unregistered email
          |caro@c.com|
    When I enter an email that is not registered
    Then the user will be redirected to the page to complete the registration with their personal information