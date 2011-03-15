class Store
  def initialize
    @inventory = Hash.new
  end

  def stock(thing, price)
    @inventory[thing] = price
  end

  def stocks?(thing)
    @inventory.has_key?(thing)
  end

end

class Cart
  def initialize(store)
    @store = store
    @contents = []
  end

  def add(thing)
    if @store.stocks? thing
      @contents << thing
    end
  end

  def contains?(thing)
    @contents.include?(thing)
  end

end