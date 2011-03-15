require 'lib'

describe Store do
  before do
    @store = Store.new
  end

  it "should carry bananas when bananas are added" do
    @store.stock("bananas", 0.59)
    @store.stocks?("bananas").should == true
  end

  it "should not stock cash registers when they haven't been stocked" do
    @store.stocks?("cash_register").should == false
  end
end