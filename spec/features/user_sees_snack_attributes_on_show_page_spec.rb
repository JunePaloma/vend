require 'rails_helper'
describe "When I a snack show page" do
 describe "I see the name and price of that snack" do
   describe "I see a list of locations with vending machines that carry that snack" do
describe "I see the average price for snacks in those vending machines" do

it "And I see a count of the different kinds of items in each vending machine." do

  owner = Owner.create(name: "Sam's Snacks")
  dons_machine  = owner.machines.create(location: "Don's Mixed Drinks")
  turing_machine = owner.machines.create(location: "Turing's unmixed drinks and basement")
  star_bar_machine = owner.machines.create(location: "Star Bar")

  chips = Snack.create(name: "chips", price:2.50)
  candy = Snack.create(name: "candy", price:2.50)
  hot_chips = Snack.create(name: "hot chips", price:3.0)
  banana = Snack.create(name: "hot chips", price:3.0)

  SnackMachine.create(snack: banana, machine: dons_machine)
  SnackMachine.create(snack: hot_chips, machine: dons_machine)
  SnackMachine.create(snack: chips, machine: dons_machine)
  SnackMachine.create(snack: candy, machine: dons_machine)

  SnackMachine.create(machine: turing_machine, snack: banana)
  SnackMachine.create(machine: turing_machine, snack: chips)

  SnackMachine.create(machine: star_bar_machine,snack: chips)
  SnackMachine.create(machine: star_bar_machine, snack:candy)



  visit snack_path(chips)
  expect(page).to have_content("Turing's unmixed drinks and basement")
  expect(page).to have_content("Don' mixed drinks")
  expect(page).to have_content("Star Bar")

  expect(page).to have_content("2 kinds of snacks")
  expect(page).to have_content("4 kinds of snacks")

  expect(page).to have_content("average price $2.75")

        end
      end
    end
  end
end
