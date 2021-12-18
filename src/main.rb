require "tty-prompt"
require 'pry'
require 'colorize'

require_relative './seed.rb'
require_relative './menu.rb'
require_relative './menu_items.rb'
require_relative './order.rb'

$order = Order.new
$prompt = TTY::Prompt.new
pizza_menu = seed_pizza_menu
sides_menu = seed_sides_menu
drinks_menu = seed_drinks_menu

#Method to gets a user's name and number
def user_info
    name = $prompt.ask("What is you're name?")
    number = $prompt.ask("what is you're number?")

    puts "Hello #{name}!!"
    puts $main_menu
    system "clear"
end

user_info

#this method shows a menu and returns the selected option
def main_menu
    awsner = $prompt.select("Main Menu".colorize(:red).on_blue, ["Pizza Menu: ", "Sides Menu: ", "Drinks Menu: ", "My Order: ", "Check Out: ", "Exit App: "]) 
    return awsner

end

#method that displays list of menu items 
def select_pizza_menu(pizza_menu)
    system "clear"
    select_pizza = $prompt.select("Pizza Menu Options: ".colorize(:red).on_blue, [pizza_menu.print_menu, "Back to Main Menu"])
    if "Back to Main Menu" == true
        main_menu
    else $prompt.yes?("Whould you like to add #{select_pizza} to you're order?") == true
        select_pizza
    end
    
    #binding.pry
    system "clear"
end

def select_sides_menu(sides_menu)
    system "clear"
    select_sides = $prompt.select("Would you like to add any sides? ".colorize(:red).on_blue, [sides_menu.print_menu], "Back to Main Menu")
    select_sides = $prompt.yes?("Whould you like to add #{select_sides} to you're order?")
    system "clear"
end

def select_drinks_menu(drinks_menu)
    system "clear"
    select_drinks = $prompt.select("Would you like to add a drink? ".colorize(:red).on_blue, [drinks_menu.print_menu], "Back to Main Menu")
    select_drinks = $prompt.yes?("Whould you like to add #{select_drinks} to you're order?")
    
    system "clear"
end

def select_user_order
    $order
end

system "clear"

puts "Welcome to Cal's Own Pizza's Store!!".colorize(:red).on_white

options = ""
while options != "Exit App: "
    options = main_menu
    case options
    when "Pizza Menu: "
        select_pizza_menu(pizza_menu)
    when "Sides Menu: "
        select_sides_menu(sides_menu)
    when "Drinks Menu: "
        select_drinks_menu(drinks_menu)
    when "My Order: "
        select_user_order
    when "Check Out: "
        puts "This is you're order total: "
        puts "Would you like to place this order? "
    end
end
