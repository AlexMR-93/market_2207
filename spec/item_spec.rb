require "./lib/item"
require "rspec"


describe(Item) do
  before(:each) do
    @item1 = Item.new({name: "Peach", price: "$0.75"})
    @item2 = Item.new({name: "Tomato", price: "$0.50"})
  end

  it("exists") do
    expect(@item1).to(be_an_instance_of(Item))
  end

  it("name") do
    expect(@item1.name).to(eq("Peach"))
    expect(@item2.name).to(eq("Tomato"))
  end

  it("has a price") do
    expect(@item1.price).to(eq(0.75))
    expect(@item2.price).to(eq(0.50))
  end
end
