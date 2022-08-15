Feature: Verifying the Adactin Select Hotel page

  Scenario Outline: Verifying adactin Select hotel page with selecting hotel
    Given User is in the Adactin Hotel Login webpage
    When User should enter the valid "<username>", "<password>" and Login
    Then User should verify after login "Hello Greens8767!"
    And User should select the "<location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>","<Children per Room>" and click on Search
    Then User should verify  "Select Hotel" message on select hotel page
    And User should select hotel by clicking on radio button and click on continue
    Then User should verify "Book A Hotel" message on the book a hotel webpage

    Examples: 
      | username   | password | location | hotels      | Room_Type | Number_of_Rooms | Checkindate | checkoutdate | adultsperroom | childrenperroom |
      | Greens8767 | QN8V3A   | London   | Hotel Creek | Double    | 2-Two           | 14/08/2022  | 14/08/2022   | 2-Two         | 2-Two           |

  Scenario Outline: Verifying adactin Select hotel page without selecting hotel
    Given User is in the Adactin Hotel Login webpage
    When User should enter the valid "<username>", "<password>" and Login
    And User should select the "<location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>","<Children per Room>" and click on Search
    Then User should verify  "Select Hotel" message on select hotel page
    And User should  click on continue
    Then User should verify "Please Select a Hotel" message on the book a hotel webpage

    Examples: 
      | username   | password | location | hotels      | Room_Type | Number_of_Rooms | Checkindate | checkoutdate | adultsperroom | childrenperroom |
      | Greens8767 | QN8V3A   | London   | Hotel Creek | Double    | 2-Two           | 14/08/2022  | 14/08/2022   | 2-Two         | 2-Two           |
