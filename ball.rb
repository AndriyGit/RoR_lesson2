class Ball
  AVAILABLE_RESPONSE = {
    1 => 'It is certain',
    2 => 'It is decidedly so',
    3 => 'Without a doubt',
    4 => 'Yes, sure',
    5 => 'You may rely on it',
    6 => 'As I see it, yes',
    7 => 'Most likely',
    8 => 'Outlook good',
    9 => 'Signs point to yes',
    10 => 'Yes',
    11 => 'Reply hazy, try again',
    12 => 'Ask again later',
    13 => 'Better not tell you now',
    14 => 'Cannot predict now',
    15 => 'Concentrate and ask again',
    16 => 'Dont count on it',
    17 => 'My reply is no',
    18 => 'My sources say no',
    19 => 'Outlook not so good',
    20 => 'Very doubtful'
  }

  def asking
    puts "What is your question?"
    gets.chomp
  end

  def get_answer
    puts "Thinking..."
    answer = rand(20) + 1
    sleep(3)
    answer
  end

  def show_answer(answer_number)
    AVAILABLE_RESPONSE[answer_number]
  end

end

ball = Ball.new
ball.asking
answer_number = ball.get_answer
puts ball.show_answer(answer_number)
