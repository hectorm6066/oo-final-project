class Pet
    attr_reader :name
    attr_accessor :hunger
    attr_accessor :type
    def initialize(name,hunger,type)
        @name = name 
        @hunger = 50
        @randomizer = rand(3)
        @type = @type
    end
    def animal
        if @randomizer == 0
            @type = "Dog"
        end
        if @randomizer == 1
            @type = "Cat"
        end
        if @randomizer == 2
            @type = "Fish"
        end
    end
end
puts Pet.new("Doug",@hunger,@type)