require_relative './menu.rb'
require_relative './menu_items.rb'



# $pizza1 = MenuItems.new("Pepperoni", 12.0)
# $pizza2 = MenuItems.new("Hawaiian", 12.0)
# $pizza3 = MenuItems.new("Margarita", 12.0)
# $pizza4 = MenuItems.new("Meat Lovers", 17.0)
# $pizza5 = MenuItems.new("Pesto Chicken", 17.0)
# $pizza6 = MenuItems.new("Supreme", 17.0)
# $pizza7 = MenuItems.new("Vegatarian Supreme", 17.0)

# $sides1 = MenuItems.new("Garlic Bread", 5.0)
# $sides2 = MenuItems.new("Chicken Nuggets", 5.0)
# $sides3 = MenuItems.new("Calzone", 7.0)

# $drinks1 = MenuItems.new("Solo", 3.5)
# $drinks2 = MenuItems.new("Coca-Cola", 3.5)
# $drinks3 = MenuItems.new("Pepsi", 3.5)
# $drinks4 = MenuItems.new("Sprite", 3.5)

def seed_pizza_menu

    pizza = Menu.new([MenuItems.new("Pepperoni", 12.0)], [MenuItems.new("Hawaiian", 12.0)], [MenuItems.new("Margarita", 12.0)])

end

# def seed_sides_menu

# end

# def seed_drinks_menu

# end
