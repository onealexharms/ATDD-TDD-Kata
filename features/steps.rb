require 'rspec'
Given /^I have (\w+) in my cart already$/ do | item |
  @cart = Cart.new
  @cart.add item
end


Given /^The store has the following coupons:$/ do |coupon_table|

  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Given /^the store has the following items:$/ do |item_hashes|
  # table is a Cucumber::Ast::Table
  item_hashes.hashes.each do | item_hash |
    Store.add item_hash
  end
end

Given /^I have (\d+) (\w+) in my cart$/ do |count, item|
  pending # express the regexp above with the code you wish you had
end

When /^I add (\w+)$/ do |item|
  @cart.add item
end

When /^I use coupon (\d+)$/ do |coupon|
  pending # express the regexp above with the code you wish you had
end

When /^I check out$/ do
  pending # express the regexp above with the code you wish you had
end


Then /^my total is (\d+)\.(\d+)$/ do |dollars, cents|
  pending # express the regexp above with the code you wish you had
end


Then /^I have (\w+) in my cart$/ do |item|
  @cart.contains?(item).should == true
end

Then /^my cart has (\d+) items in it$/ do |count|
  @cart.size.should == count
end




