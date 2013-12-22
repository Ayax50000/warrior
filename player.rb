class Player
  def play_turn(warrior)
    # add your code here
    puts warrior.health
    warrior.feel
    warrior.attack! unless warrior.feel.empty?
    if warrior.feel.empty? then
        warrior.rest! unless warrior.health == 20 
        warrior.walk! if warrior.health == 20
    end
  end
end
