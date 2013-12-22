class Player
  def initialize
      @health = 20
  end
  def play_turn(warrior)
    # add your code here
    puts warrior.health
    warrior.feel
    if warrior.feel.captive? then
        warrior.rescue!
    else
    warrior.attack! unless warrior.feel.empty?
    if warrior.feel.empty? then
        warrior.rest! if warrior.health < 20 && @health == warrior.health
        warrior.walk! if warrior.health == 20 || @health > warrior.health
    end
    end
    @health = warrior.health
  end
end
