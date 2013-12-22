class Player
  def initialize
      @health = 20
      @fin = false
  end
  def play_turn(warrior)
    warrior.feel
    if warrior.feel.wall? then
       if @fin == true then
        warrior.rest!
        @fin = false if warrior.health == 20
        else
        warrior.pivot!
        end
    else
    if warrior.feel.captive? then
        warrior.rescue!
    else
      if warrior.feel.empty? then
      if warrior.health < 20 and warrior.health > @health then
        warrior.rest!
      else if warrior.health < @health and warrior.health < 13 then
          warrior.walk!:backward
          else
          if warrior.health <= 9 and @fin == false then
          warrior.shoot!
          @fin = true
          else
          warrior.walk!
          end
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
