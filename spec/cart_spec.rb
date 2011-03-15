require 'rspec'
require 'lib'

describe Cart do
  describe "that is empty" do
    before do
      @cart = Cart.new
    end

    it "should have a tangerine when a tangerine is added" do
      @cart.add "tangerine"
      @cart.contains?("tangerine").should == true
    end

    it "should have one item when an apple is added" do
      @cart.add "apple"
      @cart.size.should == 1
    end
  end
end