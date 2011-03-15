require 'lib'

describe Store do
  before do
    @store = Store.new
  end

  it "should carry one stock_item when we add one to a new store" do
    @store.stock({:name => "apples"})
    @store.inventory_count.should == 0
  end

  it "should not stock cash registers when they haven't been stocked" do
    @store.stocks?("cash_register").should == false
  end
end