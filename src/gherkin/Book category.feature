Feature: Book category
Background: I enter URL "https://demo.nopcommerce.com/" in browser
And         I am on home page

  Scenario Outline outline: I should be able to see top menu tabs on homepage with categories

    When  I am on home page
    Then  I should be able to see top menu tabs with "<categories>"

    Examples:

      | categories        |
      | computer          |
      | electronic        |
      | apparel           |
      | digital downloads |
      | books             |
      | jewellery         |
      | gift card         |

  Scenario Outline outline: I should be able to see book page with filters

    When   I select book category from top menu tabs on home page
    Then   I should be navigates to book category
    And    I Should be able to see"<filters>"

    Examples:
      | filters  |
      | short by |
      | display  |
      | the grid |
      | list tab |

  Scenario Outline outline: I should be able to see list of terms of each filters
    Given  I am on book page
    When   I click on "<filters>"
    Then   I should be able to see "<list>" in dropdown menu
    Examples:
      | filter  | list                                                                          |
      | sort by | Name: Ato z, name: Z to A, Price :Low to High, Price: High to Low, Created on |
      | display | 3,6,9                                                                         |


  Scenario Outline outline: I should be able to choose any filter option with specific result
    Given  I am on book page
    When   I click on "<filter>"
    And    I Click on any "<option>"
    Then   I should be able to choose any filter option from the list
    And    I should be able to see "<result>"

    Examples:
      | filter  | option             |
      | sort by | Name : Ato Z       |
      | sort by | Name: Z to A       |
      | sort by | price: low to high |
      | sort by | price: high to low |
      | display | created on         |
      | display | 3                  |
      | display | 6                  |
      | display | 9                  |

  Scenario Outline outline: I should be able to see product display format according display format type as per given picture in srs document

    Given I am on book page
    When  I click on "<display format icon>"
    Then  I Should be able to see product display 2format type as per given picture  in srs document

    Examples:
      | display format icon |
      | grid                |
      | list                |
