
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
Feature: Create an order
    # Normal flow
    Scenario: The customer successfully creates an order
        Given that I am logged in as a custumer and browsing a categorie of items
        When I select an item from the menu to add to my card
        And navigate to the cart
        And submit the order
        Then the staff receives a new oder
