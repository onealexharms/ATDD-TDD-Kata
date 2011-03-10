Feature: Adding an item
  In order to build a cart full of items
  As a shopper
  I want to be able to add items to my cart

  Scenario: Adding an item to the cart

    Given I have nothing in my cart already
    When I add tangerines
    Then I have tangerines in my cart
    And my cart has 1 items in it

  Scenario: adding two items to the cart
    Given I have tangerines in my cart already
    When I add bananas
    Then my cart has 2 items in it
    And I have bananas in my cart