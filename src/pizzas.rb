class Pizzas

    def initialize(name, price)
        @name = name
        @price = price
    end


    def to_s
        return "#{@name}: $#{@price}"
    end

end