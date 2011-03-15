class Store
  def stock(thing)
    
  end

  def stocks?(item)
    false
  end

  def inventory_count
    0
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