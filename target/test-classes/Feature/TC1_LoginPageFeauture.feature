Feature: Verifying the Adactin Hotel login details

  Scenario Outline: Verifying the Adactin Hotel login with login button
    Given User is in the Adactin Hotel Booking login webpage
    When User should enter the "<username>", "<password>" and click Login button
    Then User should verify after login "Hello Greens8767!"

    Examples: 
      | username   | password |
      | Greens8767 | QN8V3A   |

  Scenario Outline: Verifying the Adactin Hotel login with enter key
    Given User is in the Adactin Hotel Booking login webpage
    When User should enter the "<username>", "<password>" and press enter key
    Then User should verify after login "Hello Greens8767!"

    Examples: 
      | username   | password |
      | Greens8767 | QN8V3A   |

  Scenario Outline: Verifying the Adactin login with Invalid credentials
    Given User is in the Adactin Hotel Booking login webpage
    When User should enter the invalid "<username>", "<password>" and click login button
    Then User should verify "Invalid Login details or Your Password might have expired." error message.

    Examples: 
      | username | password |
      | Greens   | Q2123N   |
