require_relative'./seed.rb'
require_relative'./menu_items.rb'

class Menu
    attr_reader :menu_items
    attr_writer :menu_items

    def initialize(menu_items)
        @menu_items = menu_items
        super()
    end

    def print_menu
        @menu_items.each {|item| item}
    end

    


end