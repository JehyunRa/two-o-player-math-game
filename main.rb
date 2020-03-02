require './logic'
require './player'

class Game

  p = [Player.new(1), Player.new(2)]
  turn= 1
  question= ""
  answer= 0

  until p[0].score == 0 or p[1].score == 0
    question, answer = gen_question()
    print "Player #{turn}: What is #{question}?: "
    ans= gets.chomp.to_i
    p[turn - 1].score += evaluate(answer, ans)
    turn = endTurn(p[0].score, p[1].score, turn)
  end

end
