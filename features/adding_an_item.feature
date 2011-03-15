@wip
Feature: Adding an item
  In order to build a cart full of items
  As a shopper
  I want to be able to add items to my cart

  Background:
    Given the store stocks the following item types:
      | name       | price |
      | tangerines | 0.25  |
      | bananas    | 0.59  |
      | tuna       | 0.39  |
      | salmon     | 2.39  |

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

  Scenario: adding an item which isnt for sale
    Given I have nothing in my cart already
    When I add cash_register
    Then my cart has 0 items in it