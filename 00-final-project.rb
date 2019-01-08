def rpg
    puts "Welcome to rpg simulator! In this game you will fight monsters until you collapse!"
        puts "Please enter the name of your adventurer:"
        @user_name = gets.chomp
        puts "Welcome #{@user_name}!"
        puts "Let the game, BEGIN"
        @hero = Hero.new("#{@user_name}",100,1)
end
class Hero
    #Remember to separate the following from rpg class and make it its own class, make Rpg a method 
    attr_reader :name
attr_accessor :user_health
attr_accessor :health
attr_accessor :xp
attr_accessor :level
    def initialize(name,user_health,level)
    @name = name
    @user_health = 100
    @xp = 0
    @level = 1
    puts actions
    end
    def actions
            puts "Choose your next action: Attack or Heal"
            thing = gets.chomp
            unless @health == 0
            until thing == "attack"|| thing == "heal"
            puts "Choose your next action: Attack or Heal"
            thing = gets.chomp
            end
            if thing == "attack"
                puts attack(guy)
            end
            if thing == "heal"
                puts heal
            end
            end
    end
    def attack(monster)
        @health =@health
        damage = 10
        hit_chance = rand(3)
        if hit_chance == 0
            puts "You Missed!"
        end
        if hit_chance == 1
        monster.health -= damage
        puts "You did #{damage} damage!"
        puts monster.health
        end
        if hit_chance == 2
            damage = 10*2
            monster.health -= damage
            puts "Critical Hit! You did #{damage} damage!"
            puts monster.health
        end
        def heal
            restore = 20
            heal_chance = rand(3)
        if heal_chance == 0
            puts "You Missed!"
        end
        if heal_chance == 1
            user_health += restore
            puts "You healed for #{restore}"
        end
        if heal_chance == 2
            restore = 20*2
            user_health += restore
            puts "Critical Heal!, you healed for #{restore}! "
        end
        end
    end 
    def hit?(damage)
        @health - damage
    end
end
class Monster
def initialize(name,health)
end
        def monster_attack(hero)
        damage = 10*@level
        hit_chance = rand(3)
        if hit_chance == 0
            puts "The Monster Missed!"
        end
        if hit_chance == 1
        hero.health -= damage
        puts "The Monster did #{damage} damage!"
        "You now have #{hero.health}"
        end
        if hit_chance == 2
            damage = damage*2
        hero.health -= damage
        puts "Critical Hit! The Monster did #{damage} damage!"
        puts "You now have #{hero.health}"
        end
        end
end
puts rpg