Feature: Book a room functionality

@BookSingleRoomValidDetails
  Scenario Outline: Book a single room with valid user details
    Given User is on the Home screen
    And input valid Check in date <checkintargetmonthyear> <checkintargetday> 
    And input valid Check out date <checkouttargetmonthyear> <checkouttargetday> to select the available single room
    When they input valid user details to reserve the room
    And click on Reserve Now button
    Then System should display a booking confirmation message to the user
  
  Examples:
  | checkintargetmonthyear | checkintargetday | checkouttargetmonthyear |checkouttargetday |
  |   Month July, 2025     |   16    |      Month July, 2025   |   17 |
  
@BookSingleRoomWithoutRequiredDetails 
    Scenario: Book a double room without required field
    Given User is on the Home screen
    And input valid Check in and Check out dates to select the available single room
    When they input valid user details for all the fields and leave the field Email as blank
    And click on Reserve Now button
    Then System should display an error message, stating user to input the required detail.

     
