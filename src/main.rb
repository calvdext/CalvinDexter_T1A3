require "tty-prompt"

require_relative './seed.rb'


system "clear"
$prompt = TTY::Prompt.new

def main_menu
    awsner = $prompt.select("Main Menu", ["Pizza Menu: ", "Sides Menu: ", "Drinks Menu: ", "My Order: ", "Exit App: "]) 
    return awsner
end

def select_pizza_menu
    select_pizza = $prompt.select("Pizza Menu Options: ", [$pizza1, $pizza2, $pizza3, $pizza4, $pizza5, $pizza6, $pizza7])
    return select_pizza
end

options = ""
while options != "Exit App: "
    options = main_menu
    case options
    when "Pizza Menu: "
        select_pizza_menu
    when "Sides Menu: "
        puts " Sides Menu"
    when "Drinks Menu: "
        puts "Drinks Menu: "
    when "My Order: "
        print "New Order: "
    end
end