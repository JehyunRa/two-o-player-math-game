def random_N(num)
  rand(1..num)
end

def gen_question
  n1= random_N(20)
  n2= random_N(20)
  question= "#{n1} + #{n2}"
  answer= n1 + n2
  return question, answer
end

def evaluate(ans1, ans2)
  if ans1 == ans2
    puts 'Correct'
    return 0
  else
    puts 'Wrong'
    return -1
  end
end

def endTurn(p1, p2, turn)
  puts "P1: #{p1}/3 vs P2: #{p2}/3"
  if p1 != 0 && p2 != 0
    puts "----- NEW TURN -----"
    if turn == 1
      return 2
    else
      return 1
    end
  else
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end
