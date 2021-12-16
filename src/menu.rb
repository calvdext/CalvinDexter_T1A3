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
        @menu_items.each_with_index {|item, index| item}
        
    end

    def add_order(menu_items)
        @order_items = []
        @order_items << []
        
    end

end