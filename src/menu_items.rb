require_relative'./seed.rb'
require_relative'./menu.rb'

class MenuItems
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    def to_s
        return "#{@name}: $#{@price}"
    end


end