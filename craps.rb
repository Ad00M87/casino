require 'pry'
require 'colorize'


#------------------Craps----------------------

def lead_off

  dice = [1, 2, 3, 4, 5, 6]

  roll = dice.sample(2)
  puts roll.join(" and ")
  @total = roll.reduce(&:+)

  if @total == 7 | 11
    puts "You win!"
  elsif @total == 2 | 12
    puts "Craps!"
  else
    puts "#{@total} is on! Place your bets!"
    subsequent_rolls(@total)
  end
end

def subsequent_rolls(number)

  number = leading_roll

  dice = [1, 2, 3, 4, 5, 6]

  roll = dice.sample(2)
  puts roll.join(" and ")
  total = roll.reduce(&:+)

  case leading_roll
    when 7 | 11
      puts "Craps!"
      lead_off
    when leading_roll
      puts "#{leading_roll!}! Pays out!"
      lead_off
    else
      puts "Pay out!"
      subsequent_rolls
    end
end

lead_off
