require 'rails_helper'

describe "As a user" do
describe "When I visit a specific vending machine page" do
  it "I see the average price for the snacks in that machine " do
    owner = Owner.create(name: "Sam's Snacks")
    dons_machine  = owner.machines.create(location: "Don's Mixed Drinks")

    chips = dons_machine.snacks.create(name: "chips", price:2.50)
    candy = dons_machine.snacks.create(name: "candy", price:2.50)
    hot_chips = dons_machine.snacks.create(name: "hot chips", price:3.0)
    banana = dons_machine.snacks.create(name: "hot chips", price:3.0)

    visit machine_path(dons_machine)

    expect(page).to have_content("Average price: $2.75")


    end
  end
end
