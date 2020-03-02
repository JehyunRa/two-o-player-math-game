def gen_question
  n1= rand(1..20)
  n2= rand(1..20)
  question= "#{n1} + #{n2}"
  answer= n1 + n2
  return question, answer
end

def evaluate(p, check)
  if check
    puts "#{p[p[0]].name}: Yes! You are correct."
  else
    puts "#{p[p[0]].name}: Seriously? No!"
    p[p[0]].score -= 1
  end
end

def endTurn(p)
  puts "P1: #{p[1].score}/3 vs P2: #{p[2].score}/3"
  if p[1].score != 0 && p[2].score != 0
    puts "----- NEW TURN -----"
    p[0] == 1 ? p[0] = 2 : p[0] = 1
  else
    p[0] == 2 ? winner = 1 : winner = 2
    puts "#{p[winner].name} wins with score of #{p[winner].score}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end
