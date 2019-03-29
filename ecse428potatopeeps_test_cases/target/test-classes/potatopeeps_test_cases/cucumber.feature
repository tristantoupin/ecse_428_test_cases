
#----------------- Default Structure----------------
#Feature: Setting up a maven archetype

#  To quickly start a new project a maven archetype is usefull

#  Scenario:
#    Given Alice has installed maven
#    When and she runs the maven command from the read me
#    Then maven will setup a new cucumber project

#----------------- Default Structure----------------

# Story 1
Feature: Browse item in the menu
    # Normal flow
    Scenario: The customer successfully browses the menu
        Given that I am logged in as a custumer
        When I select a category to browse
        And selects an item of the menu
        Then I see a description of the item

# Story 2 and 5
@tag Feature: Create an order
    Scenario: The customer successfully creates an order
        Given that I am logged in as a custumer and browsing a categorie of items
        When I select an item from the menu to add to my card
        And navigate to the cart
        And submit the order
        Then the staff receives a new oder


# Story 3 and 8
@tag Feature: Request the bill
    # Normal flow
    Scenario: The customer successfully review and request the bill
        Given that I am logged in as a custumer
        When I navigate to the bill
        And and submit a request to the staff to pay the bill
        And the staff receives a new bill request
        Then the staff clears the bill request
# Story 4 and 7
@tag Feature: Query the staff
    # Normal flow
    Scenario: The customer successfully queries the staff
        Given that I am logged in as a custumer
        When I request the staff for help
        And the staff receives a new help request
        Then the staff clears the request
        
# Story 6
@tag Feature: Change status of an order
    # Normal flow
    Scenario Outline: The staff successfully changes the status of an order
        Given that I am logged in as a staff
        When I navigate the orders
        And the customer submits and order
        And changes the status of the order to <status>
        Then the status persists  
    Examples:
     | status |
     | in progress |
     | served |
     | ready |

# Story 9
@tag Feature: Add item to the menu
    # Normal flow
    Scenario Outline: The manager successfully adds an item to the menu
        Given that I am logged in as a manager
        When I enter the <price> of an item
        And I enter the <name> of an item
        And I enter the <description> of an item
        And I enter the <inventory> of an item
        And I enter the <tag> of an item
        And submits the item
        Then the item persists
    Examples: Price, names, descriptions, inventory quantities and tags
     | price |  name | description | inventory | tag |
     | 789 | jWVCTBfXrdzA | lCRsxXDHXHda | 123 | Appetizer |
     | 678 | OnpVCMQFChcP | exwnNSCtzboF | 234 | Desert |
     | 567 | NzlNTwYLuVAv | XcEsHzsBtGEC | 345 | Drink |
     | 456 | bajAQrLKlnRy | bajAQrLKlnRy | 456 | Main Course |
     | 345 | vUorAWQiVJrW | UcPyoxPaZuIr | 567 | Soup |
     | 234 | cIKrSnAzqkSc | nyygyGUXbRNU | 678 | Spicy |
     | 123 | PVJxbIrsjwkK | dYOGxSdrHqDW | 789 | Vegetarian |

# Story 10
@tag Feature: Delete item from the menu
    # Normal flow
    Scenario: The manager successfully deletes an item to the menu
        Given that I am logged in as a manager
        When delete an item
        And the system prompts me if I am sure that I want to delete the item
        And I select that I am sure
        Then the item is deleted

# Story 11
@tag Feature: Update item from the menu
    # Normal flow
    Scenario Outline: The manager successfully updates the name of an item to the menu
        Given that I am logged in as a manager
        When update the <name> of the  an item
        And I save the changes
        Then the item's name was updated
    Examples: Names
     | name |
     | annvIQCJQRvP |
     | qTOmJbNWHHBV |
     | hhuaSvauNVmv |

    # Alternate flow
    Scenario Outline: The manager successfully updates the price of an item to the menu
        Given that I am logged in as a manager
        When update the <price> of the  an item
        And I save the changes
        Then the item's name was updated
    Examples: Prices
     | price |
     | 913 |
     | 12 |
     | 163 |

    # Alternate flow
    Scenario Outline: The manager successfully updates the description of an item to the menu
        Given that I am logged in as a manager
        When update the <description> of the  an item
        And I save the changes
        Then the item's name was updated
    Examples: Descriptions
     | description |
     | dkQQrXaCgWdQ |
     | FcedjWIzUrRY |
     | ReeoWARsYufk |

    # Alternate flow
    Scenario Outline: The manager successfully updates the quantity of an item to the menu
        Given that I am logged in as a manager
        When update the <quantity> of the  an item
        And I save the changes
        Then the item's name was updated
    Examples: Quantities
     | quantity |
     | 83 |
     | 12 |
     | 7123 |

    # Alternate flow
    Scenario Outline: The manager successfully updates the tag of an item to the menu
        Given that I am logged in as a manager
        When update the <tag> of the  an item
        And I save the changes
        Then the item's name was updated
    Examples: Tags
     | tag |
     | Appetizer |
     | Desert |
     | Drink |
     | Main Course |
     | Soup |
     | Spicy |
     | Vegetarian |


# Story 12
@tag Feature: Update item from the menu
    # Normal flow
    Scenario Outline: The manager successfully updates the name of an item to the menu
        Given that I am logged in
        When I select the task <task>
        Then the landing page of that task is open
    Examples: Tasks
     | task |
     | manager |
     | staff |
     | customer |
