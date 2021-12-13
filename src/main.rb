require "tty-prompt"

system "clear"
$prompt = TTY::Prompt.new

def main_menu
    awsner = $prompt.select("Main Menu", ["Pizza Menu: ", "Sides Menu: ", "Drinks Menu: ", "My Order: ", "Exit App: "]) 
    return awsner
end

options = ""
while options != "Exit App: "
    options = main_menu
    case options
    when "Pizza Menu: "
        puts "Select Pizza Menu"
    when "Sides Menu: "
        puts " Sides Menu"
    when "Drinks Menu: "
        puts "Drinks Menu: "
    when "My Order: "
        print "New Order: "
    end
end