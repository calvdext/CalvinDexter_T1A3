require "tty-prompt"

require_relative './seed.rb'

$prompt = TTY::Prompt.new

#this method shows a menu and returns the selected option
def main_menu
    awsner = $prompt.select("Main Menu", ["Pizza Menu: ", "Sides Menu: ", "Drinks Menu: ", "My Order: ", "Check Out: ", "Exit App: "]) 
    return awsner
end

#method that displays list of menu items 
def select_pizza_menu
    select_pizza = $prompt.select("Pizza Menu Options: ", [$pizza1, $pizza2, $pizza3, $pizza4, $pizza5, $pizza6, $pizza7], "Back to Main Menu")
    return select_pizza
end

def select_sides_menu
    select_sides = $prompt.select("Would you like to add any sides? ", [$sides1, $sides2, $sides3], "Back to Main Menu")
    return select_sides
end

def select_drinks_menu
    select_drinks = $prompt.select("Would you like to add a drink? ", [$drinks1, $drinks2, $drinks3, $drinks4], "Back to Main Menu")
    return select_drinks
end


def select_user_order
    
end

system "clear"
puts "Welcome to Cal's Own Pizza's Store!!"

options = ""
while options != "Exit App: "
    options = main_menu
    case options
    when "Pizza Menu: "
        select_pizza_menu
    when "Sides Menu: "
        select_sides_menu
    when "Drinks Menu: "
        select_drinks_menu
    when "My Order: "
        print "New Order: "
    when "Check Out: "
        puts "This is you're order total: "
        puts "Would you like to place this order? "
    end
end
