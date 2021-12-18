class Order
    attr_reader :order_items
    attr_writer :order_items

    def initialize
        @order_items = {}
    end

    def add_order(name, quantity)
        @order_items.each_with_index do |item, quantity|
            @order_items[item] = quantity
        end
    end 

    def total_order

    end
end