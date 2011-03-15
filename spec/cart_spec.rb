require 'rspec'
require 'lib'

describe Cart do
  before do
    @store = Store.new
    @store.stub!(:stocks?).and_return(true)
    @cart = Cart.new(@store)
  end
  describe "adds items which are stocked" do

    it "should have a tangerine when a tangerine is added to empty cart" do
      @cart.add "tangerine"
      @cart.contains?("tangerine").should == true
    end

  end
  describe "prevents adding items which are not stocked" do
    it "should not contain a cash register if we attempt to add one and one is not stocked" do
      @store.stub!(:stocks?).with("cash_register").and_return(false)
      @cart.add("cash_register")
      @cart.contains?("cash_register").should == false
    end
  end
  it "should not contain tangerines if we added apples" do
    @cart.add("apples")
    @cart.contains?("tangerines").should == false
  end

end