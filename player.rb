class Player
  def play_turn(warrior)
    # add your code here
    warrior.feel
    warrior.attack! unless warrior.feel.empty?
    warrior.walk! if warrior.feel.empty?
  end
end
