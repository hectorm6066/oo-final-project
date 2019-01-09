def rpg
    puts "Welcome to rpg simulator! In this game we will see if chance is on your side!"
    puts "Please enter the name of your adventurer:"
    @user_name = gets.chomp
    puts "Welcome #{@user_name}!"
    puts "Let the game, BEGIN"
hero= Hero.new(100)
orc = Monster.new(100)
orc.mon_attack(hero)
hero.attack(orc)
    until hero.dead? || orc.dead?
orc.mon_attack(hero)
hero.attack(orc)
        if hero.dead?
    puts "game over"
    break
        end
        if orc.dead?
    puts "You defeated the monster and won!"
    break
        end
    end
end
class Hero
    def initialize(health)
    @health = 100
    end

  def hit(damage)
      #receives damage
    @health -= damage
  end
def attack(monster)
    damage = 10*rand(3+1)
    puts "You attacked for #{monster.hit(damage)}"
end
  def dead?
    @health <= 0
  end
end
class Monster
    def initialize(health)
        @health = 20
    end
def mon_attack(guy)
    damage = 10*rand(3)
    guy.hit(damage)
    puts "The monster attacked for #{guy.hit(damage)}"
end
def hit(damage)
    @health -=damage
end
def dead?
    @health <= 0
end
end
puts rpg