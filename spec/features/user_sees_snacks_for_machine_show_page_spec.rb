require 'rails_helper'

describe "As a user" do
describe "When I visit a specific vending machine page" do
  it "I see the name of all of the snacks associated with that vending machine along with their price " do

    owner = Owner.create(name: "Sam's Snacks")
    dons_machine  = owner.machines.create(location: "Don's Mixed Drinks")

    chips = dons_machine.snacks.create(name: "chips", price:2.50)
    candy = dons_machine.snacks.create(name: "candy", price:2.50)

    visit machine_path(dons_machine)

    expect(page).to have_content("Snack:chips")

    expect(page).to have_content("Price: $2.5")
    expect(page).to have_content("Snack: candy")
    end
  end
end
