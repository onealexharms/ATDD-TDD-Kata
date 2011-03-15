require 'rspec'
require 'lib'

describe Cart do
  before do
    @cart = Cart.new
  end
  describe "that is empty" do


    it "should have a tangerine when a tangerine is added" do
      @cart.add "tangerine"
      @cart.contains?("tangerine").should == true
    end

    it "should have one item when an apple is added" do
      @cart.add "apple"
      @cart.number_of_items.should == 1
    end
  end

  it "should have two items when bananas and tangerines are added" do
    @cart.add("tangerines")
    @cart.add("bananas")
    @cart.number_of_items.should == 2
  end

end