class Store
  def stock(thing)
    
  end

  def inventory_count
    0
  end
end

class Cart
  def initialize
    @number_of_items = 0
  end

  def add(thing)
    @number_of_items += 1 
  end

  def contains?(thing)
    return true
  end

  def number_of_items
    return @number_of_items
  end
end