require 'rails_helper'

describe "As a user" do
describe "When I visit a specific vending machine page" do
  it "I see the average price for the snacks in that machine " do
    owner = Owner.create(name: "Sam's Snacks")
    dons_machine  = owner.machines.create(location: "Don's Mixed Drinks")

    chips = Snack.create(name: "chips", price:2.50)
    candy = Snack.create(name: "candy", price:2.50)
    hot_chips = Snack.create(name: "hot chips", price:3.0)
    banana = Snack.create(name: "hot chips", price:3.0)

    SnackMachine.create(machine: dons_machine, snack: banana)
    SnackMachine.create(machine: dons_machine, snack: hot_chips)
    SnackMachine.create(machine: dons_machine, snack: chips)
    SnackMachine.create(machine: dons_machine, snack: candy)

    visit machine_path(dons_machine)

    expect(page).to have_content("Average price: $2.75")


    end
  end
end
