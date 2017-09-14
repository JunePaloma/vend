require 'rails_helper'
describe "average_snack_price" do
  it "calculates the average price of items it holds" do
    owner = Owner.create(name: "Sam's Snacks")
    dons_machine  = owner.machines.create(location: "Don's Mixed Drinks")

    chips = dons_machine.snacks.create(name: "chips", price:2.50)
    candy = dons_machine.snacks.create(name: "candy", price:2.50)
    hot_chips = dons_machine.snacks.create(name: "hot chips", price:3.0)
    banana = dons_machine.snacks.create(name: "hot chips", price:3.0)
    expect(dons_machine.average_snack_price).to eq(2.75)
  end
end
