require './logic'
require './player'

class Game

  p = [Player.turn, Player.new(1), Player.new(2)]
  question= ""
  answer= 0

  until p[1].score == 0 or p[2].score == 0
    question, answer = gen_question()
    print "Player #{p[0]}: What is #{question}?: "
    evaluate(p, answer == gets.chomp.to_i)
    endTurn(p)
  end

end
