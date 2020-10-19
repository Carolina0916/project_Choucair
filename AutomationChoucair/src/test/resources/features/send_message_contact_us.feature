Feature: A user enters the application, go to contact us link and send a mesage

  Scenario: the user fills in the fields with valid data, without selecting any option in subject heading
    Given I want to send a message
    When I complete all the fields except the subject header
         |c@c.com| |12345| |buenos dias|
    Then a message will be displayed in red indicating that I must select an option in the subject headig field

  Scenario: the user enters an email with invalid format
    Given I want to send a message
    When I enter an email with invalid format
         |hola@c|
    Then the field is highlighted in red with an "x" the end

  Scenario: the user sends the email without completing the message field
    Given I want to send a message
    When I click the send button without completing the message field
         |webmaster| |c@c.com||12345|
    Then a message will be displayed in red indicating that the message field cannot be blank

  Scenario: the user sends the email with all fiels complet
    Given I want to send a mesagge
    When I fill in all the fields correctly
    Then a message will be displayed indicating that the mesagge has been sent successfully
