require 'lib'

describe Store do
  it "should carry one stock_item when we add one to a new store" do
    store = Store.new
    store.stock({:name => "apples"})
    store.inventory_count.should == 0
  end
end

