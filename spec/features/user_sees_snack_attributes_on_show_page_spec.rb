require 'rails_helper'
describe "When I a snack show page" do
 describe "I see the name and price of that snack" do
   describe "I see a list of locations with vending machines that carry that snack" do
descrbe "I see the average price for snacks in those vending machines" do

it "And I see a count of the different kinds of items in each vending machine." do

  owner = Owner.create(name: "Sam's Snacks")
  dons_machine  = owner.machines.create(location: "Don's Mixed Drinks")
  turing_machine = owner.machines.create(location: "Turing's unmixed drinks and basement")
  star_bar_machine = owner.machines.create(location: "Star Bar")

  chips = dons_machine.snacks.create(name: "chips", price:2.50)
  candy = dons_machine.snacks.create(name: "candy", price:2.50)
  hot_chips = dons_machine.snacks.create(name: "hot chips", price:3.0)
  banana = dons_machine.snacks.create(name: "hot chips", price:3.0)

  chips2 = turing_machine.snacks.create(name: "chips", price:1.50)
  candy2 = turing_machine.snacks.create(name: "candy", price:1)

  chips3 = star_bar_machine.snacks.create(name: "chips", price:2.25)

visit snack_path()



        end
      end
    end
  end
end
