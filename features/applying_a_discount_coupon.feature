Feature:
  In order to get a better price on my items
  As a shopper
  I want to be able to use a percentage off coupon on my order


  Background:
    Given the store stocks the following item types:
      | name       | price |
      | tangerines | 0.25  |
      | bananas    | 0.59  |
      | tuna       | 0.39  |
      | salmon     | 2.39  |
    And The store has the following coupons:
      | code | discount |
      | 1234 | 5%       |
      | 5678 | 15%      |
      | 0987 | 50%      |

  Scenario: 5% off total order
    Given I have 5 tuna in my cart
    When I use coupon 1234
    And I check out
    Then my total is 1.85

  Scenario: 15% off total order
    Given I have 3 salmon in my cart
    And I have 5 bananas in my cart
    When I use coupon 5678
    Then my total is 8.60

  Scenario: 50% off total order
    Given I have 30 tangerines in my cart
    And I have 10 tune in my cart
    And I have 50 bananas in my cart
    When I use coupon 0987
    Then my total is 48.70



