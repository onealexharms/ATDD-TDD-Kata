
Feature: Adding items to a cart
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
    Given I have an empty cart
    When I add tangerines
    Then I have tangerines in my cart

  Scenario: adding two items to the cart
    Given I have tangerines in my cart already
    When I add bananas
    Then I have bananas in my cart
    
  @wip
  Scenario: adding an item which isn't for sale
    Given I have an empty cart
    When I add cash_register
    Then I do not have a cash_register in my cart