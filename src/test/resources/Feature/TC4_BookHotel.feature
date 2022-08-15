Feature: Verifying Adactin Hotel Book a hotel webpage

  Scenario Outline: Verifying Adactin book a hotel page by entering all fields
    Given User is in the Adactin Hotel Login webpage
    When User should enter the valid "<username>", "<password>" and Login
    Then User should verify after login "Hello Greens8767!"
    And User should select the "<location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>","<Children per Room>" and click on Search
    Then User should verify  "Select Hotel" message on select hotel page
    And User should select hotel by clicking on radio button and click on continue
    Then User should verify "Book A Hotel" message on the book a hotel webpage
    And User should enter "<First Name>","<Last Name>","<Billing Address>","<Credit Card No.>","<Credit Card Type>","<Expiry Month>","<Expiry Year>","<CVV Number>" and click on book now
      | Credit Card No   | Credit Card Type     | Expiry Month | Expiry Year | CVV Number |
      | American Express | 1234 56789 5648 7894 |           08 |        2022 |        989 |
      | VISA             | 8946 5446 6584 8529  |           12 |        2022 |        456 |
      | Master Card      | 2586 4569 2587 4569  |           12 |        2022 |        489 |
      | Rupay            | 2564 8228 6459 2594  |           12 |        2022 |        364 |
    Then User should verify "Booking Confirmation" and "order id"

    Examples: 
      | username   | password | location | hotels      | Room_Type | Number_of_Rooms | Checkindate | checkoutdate | adultsperroom | childrenperroom | First name | Last name | Billing Address   |
      | Greens8767 | QN8V3A   | London   | Hotel Creek | Double    | 2-Two           | 14/08/2022  | 14/08/2022   | 2-Two         | 2-Two           | Sarvana    | Kumar     | Dindigul,Tamilndu |

  Scenario Outline: Verifying Adactin book a hotel page without entering all fields
    Given User is in the Adactin Hotel Login webpage
    When User should enter the valid "<username>", "<password>" and Login
    Then User should verify after login "Hello Greens8767!"
    And User should select the "<location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>","<Children per Room>" and click on Search
    Then User should verify  "Select Hotel" message on select hotel page
    And User should select hotel by clicking on radio button and click on continue
    Then User should verify "Book A Hotel" message on the book a hotel webpage
    And User should click on book now
    Then User should verify "Please Enter your First Name","Please Enter you Last Name","Please Enter your Address"," Please Enter your 16 Digit Credit Card Number","Please Select your Credit Card Type","Please Select your Credit Card Expiry Month"," Please Enter your Credit Card CVV Number" message

    Examples: 
      | username   | password | location | hotels      | Room_Type | Number_of_Rooms | Checkindate | checkoutdate | adultsperroom | childrenperroom |
      | Greens8767 | QN8V3A   | London   | Hotel Creek | Double    | 2-Two           | 14/08/2022  | 14/08/2022   | 2-Two         | 2-Two           |
