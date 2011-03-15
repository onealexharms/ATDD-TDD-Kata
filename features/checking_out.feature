Feature: Checking out my items
  In order to legally transfer ownership of the items in my cart to me
  As a shopper
  I want to check out

  Background:
    Given the store stocks the following item types:
      | name       | price |
      | tangerines | 0.25  |
      | bananas    | 0.59  |
      | tuna       | 0.39  |
      | salmon     | 2.39  |

      
Scenario: Buying tangerines
  Given I have 1 tangerines in my cart
  When I check out
  Then my total is 0.25

Scenario: Buying two tangerines
  Given I have 2 tangerines in my cart
  When I check out
  Then my total is 0.50

Scenario: Buying 100 tangerines
  Given I have 100 tangerines in my cart
  When I check out
  Then my total is 25.00

Scenario: Buying bananas and tuna
  Given I have 1 bananas in my cart
    And I have 1 tuna in my cart
  When I check out
  Then my total is 0.98




