require "./lib/item"
require "./lib/vendor"
require "rspec"


describe(Vendor) do
  before(:each) do
    @vendor = Vendor.new("Rocky Mountain Fresh")
    @item1 = Item.new({name: "Peach", price: "$0.75"})
    @item2 = Item.new({name: "Tomato", price: "$0.50"})
  end

  it("exists") do
    expect(@vendor).to(be_an_instance_of(Vendor))
  end

  it("name") do
    expect(@vendor.name).to(eq("Rocky Mountain Fresh"))
  end

  it("can check_stock") do
    expect(@vendor.check_stock(@item1)).to(eq(0))
    @vendor.stock(@item1, 30)
    expect(@vendor.inventory).to(eq({@item1 => 30}))
  end
end
