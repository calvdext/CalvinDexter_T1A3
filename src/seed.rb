require_relative './menu.rb'
require_relative './menu_items.rb'

def seed_pizza_menu

    pizza_menu = Menu.new([MenuItems.new("Pepperoni", 12.0),MenuItems.new("Hawaiian", 12.0),MenuItems.new("Margarita", 12.0),MenuItems.new("Meat Lovers", 17.0),MenuItems.new("Pesto Chicken", 17.0),MenuItems.new("Supreme", 17.0),MenuItems.new("Vegatarian Supreme", 17.0)])

end

def seed_sides_menu
    sides_menu = Menu.new([MenuItems.new("Garlic Bread", 5.0),MenuItems.new("Chicken Nuggets", 5.0),MenuItems.new("Calzone", 7.0)])
end

def seed_drinks_menu
    drinks_menu = Menu.new([MenuItems.new("Solo", 3.5),MenuItems.new("Coca-Cola", 3.5),MenuItems.new("Pepsi", 3.5),MenuItems.new("Sprite", 3.5)])
end

def order
    order = Order.new()
end