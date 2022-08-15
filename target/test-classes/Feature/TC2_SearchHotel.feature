Feature: Verifying the Adactin Search Hotel page

  Scenario Outline: Verifying adactin search hotel page by selecting all fields
    Given User is in the Adactin Hotel Login webpage
    When User should enter the valid "<username>", "<password>" and Login
    Then User should verify after login "Hello Greens8767!"
    And User should select the "<location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>","<Children per Room>" and click on Search
    Then User should verify  "Select Hotel" message on select hotel page

    Examples: 
      | username   | password | location | hotels      | Room_Type | Number_of_Rooms | Checkindate | checkoutdate | adultsperroom | childrenperroom |
      | Greens8767 | QN8V3A   | London   | Hotel Creek | Double    | 2-Two           | 14/08/2022  | 14/08/2022   | 2-Two         | 2-Two           |

  Scenario Outline: Verifying adactin search hotel page by selecting only Mandatory fields
    Given User is in the Adactin Hotel Login webpage
    When User should enter the valid "<username>", "<password>" and Login
    Then User should verify after login "Hello Greens8767!"
    And User should select the "<location>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>"and click on Search
    Then User should verify  "Select Hotel" message on select hotel page

    Examples: 
      | username   | password | location | Number_of_Rooms | Checkindate | checkoutdate | adultsperroom | childrenperroom |
      | Greens8767 | QN8V3A   | London   | 2-Two           | 14/08/2022  | 14/08/2022   | 2-Two         | 2-Two           |

  Scenario Outline: Verifying adactin search hotel page by entering invalid check in and check out date
    Given User is in the Adactin Hotel Login webpage
    When User should enter the valid "<username>", "<password>" and Login
    Then User should verify after login "Hello Greens8767!"
    And User should select the "<location>","<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>","<Children per Room>" and click on Search
    Then User should verify  "Check-In Date shall be before than Check-Out Date", "Check-Out Date shall be after than Check-In Date" message

    Examples: 
      | username   | password | location | hotels      | Room_Type | Number_of_Rooms | Checkindate | checkoutdate | adultsperroom | childrenperroom |
      | Greens8767 | QN8V3A   | London   | Hotel Creek | Double    | 2-Two           | 14/07/2022  | 14/07/2021   | 2-Two         | 2-Two           |

  Scenario Outline: Verifying adactin search hotel page only without entering location fields
    Given User is in the Adactin Hotel Login webpage
    When User should enter the valid "<username>", "<password>" and Login
    Then User should verify after login "Hello Greens8767!"
    And User should only select "<Hotels>","<Room Type>","<Number of Rooms>","<Check In Date>","<Check Out Date>","<Adults per Room>","<Children per Room>" and click on Search
    Then User should verify "Please Select a Location" message

    Examples: 
      | username   | password | hotels      | Room_Type | Number_of_Rooms | Checkindate | checkoutdate | adultsperroom | childrenperroom |
      | Greens8767 | QN8V3A   | Hotel Creek | Double    | 2-Two           | 14/07/2022  | 14/07/2021   | 2-Two         | 2-Two           |
