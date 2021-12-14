class Menu

    def initialize(menu_items)
        @menu_items = menu_items
    end

    def show_menu
        puts " Menu: "
        @menu_items.each {|item| puts item}
    end

end