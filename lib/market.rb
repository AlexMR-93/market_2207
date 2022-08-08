class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map { |vendor| vendor.name }
  end

  def vendors_that_sell(item)
    @vendors.select { |vendor| vendor.inventory.include?(item) }
  end

  def total_inventory
  end

  def overstock
  end

  def sorted_item_list
    food_items = @vendors.flat_map { |vendor| vendor.inventory.keys }
    food_names = food_items.map { |item| item.name }
    food_names.uniq.sort
  end
end
