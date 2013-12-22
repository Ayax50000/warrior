class Player
  def initialize
      @health = 20
  end
  def play_turn(warrior)
    # add your code here
    puts warrior.health
    warrior.feel
    if warrior.feel.wall? then
        warrior.pivot!
    else
    if warrior.feel.captive? then
        warrior.rescue!
    else
      if warrior.feel.empty? then
      if warrior.health < 20 and warrior.health >= @health then
        warrior.rest!
      else if warrior.health < @health and warrior.health < 13 then
          warrior.walk!:backward
          else
          warrior.walk!
          end
      end
    else
    warrior.attack!
    end
    end
      @health = warrior.health
    end
  end
end
