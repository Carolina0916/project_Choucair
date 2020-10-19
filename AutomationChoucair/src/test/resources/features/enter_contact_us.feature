Feature: User enters the option to contact us

  Scenario: User clicks on the contact us option
    Given I want to enter the option to contact us
    When I click on the contact us link
    Then I am redirected to the contact us page

  Scenario: User enter on the contact us option by URL
    Given I want to enter the option to contact us by url
    When Enter the url of the contact us page
    Then I am redirected to the contact us page
