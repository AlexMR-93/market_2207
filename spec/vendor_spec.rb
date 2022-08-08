require "./lib/item"
require "./lib/vendor"
require "rspec"


describe(Vendor) do
  before(:each) do
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

  it("exists") do
    expect(@vendor).to(be_an_instance_of(Vendor))
  end

  it("name") do
    expect(@vendor.name).to(eq("Rocky Mountain Fresh"))
  end
end
