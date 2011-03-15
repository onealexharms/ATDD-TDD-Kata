require 'rspec'
require 'lib'

Given /^I have an empty cart$/ do
  @cart = Cart.new @store
end

Given /^I have (\w+) in my cart already$/ do | item |
  @cart = Cart.new @store
  @cart.add item
end

Given /^The store has the following coupons:$/ do |coupon_table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Given /^the store stocks the following item types:$/ do |table|
  # table is a Cucumber::Ast::Table
  @store = Store.new
  table.hashes.each do | attributes |
    @store.stock attributes["name"], attributes["price"]
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


And /^I do not have a (\w+) in my cart$/ do |item|
  @cart.contains?(item).should == false
end



