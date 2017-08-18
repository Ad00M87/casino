require 'pry'
require 'colorize'


#------------------Blackjack------------------

@deck_of_cards = ["2", "2", "2", "2", "3", "3", "3", "3", "4", "4", "4", "4", "5", "5", "5", "5", "6", "6", "6", "6", "7", "7", "7", "7", "8", "8", "8", "8", "9", "9", "9", "9", "10", "10", "10", "10", "J", "J", "J", "J", "Q", "Q", "Q", "Q", "K", "K", "K", "K", "A", "A", "A", "A"]
puts "Dealer's hand #{@deck_of_cards.sample(2)}"
puts "Your hand #{@deck_of_cards.sample(2)}"
