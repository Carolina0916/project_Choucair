Feature: A user enters the application, goes to the login link and has already registered a valid email,
  therefore they are redirected to the extended form to complete their personal information

  Scenario: User does not fill in one of the empty fields
    Given I want to fill out the form
    When Complete the personal information fields and leave one of the required fields empty
      |first name|lastname|
    Then a warning message is displayed indicating the fields that are difficult to complete

  Scenario: The user enters invalid data in the fields.
    Given I enter invalid data in the fields
    When I enter numbers in the name and lasnamte fields
         |23232 | 11111|
    Then a regex will be validated and fields with invalid data are highlighted in red with an "x" at the end


  Scenario: The user enters invalid data in the fields.
    Given I wan complete the register fields
    When Complete all the required fields with valid information and click on register
         |Caro | Sanchez | caro@caro.com | Caro.2020 | av 5 # 6-33 | Bogota | Alabama | 12345 | Estados Unidos | 3148569874|
    Then An autologin is carried out and is redirected to the home of the user portal
