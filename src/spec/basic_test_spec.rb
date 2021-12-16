require_relative'../menu.rb'
require_relative'../menu_items.rb'

describe "Test MenuItems" do
    it "Should store the attributes of the MenuItems" do
        @name = "Pepperoni"
        @price = 12.0
        expect(menu_items.name).to eq(name)
        expect(menu_items.price).to eq(price)
    end
end

describe "Test Menu" do
    it "Should store the array of the MenuItems" do
        menu_items = [MenuItems.new("Pepperoni", 12.0),MenuItems.new("Hawaiian", 12.0)]
        pizza_menu = Menu.new(menu_items)
        expect(pizza_menu.menu_items.length).to eq(2)
    end
end