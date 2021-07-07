require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

magazine_one = Magazine.new('People', 'Lifestyle')
magazine_two = Magazine.new('Celebrity Gossip', 'Gossip')
magazine_three = Magazine.new('Extreme Home Makeover', 'Lifestyle')
magazine_four = Magazine.new('National Geographic', 'Nature')
magazine_five = Magazine.new('Into The Woods', 'Nature')

person_one = Person.new('Devin', 'Software Engineer')
person_two = Person.new('Brendan', 'Realtor')
person_three = Person.new('Jeff', 'Electrician')
person_four = Person.new('Karley', 'Unemployed')
person_five = Person.new('Drake', 'Broker')
person_six = Person.new('Tessa', 'Chef')

subscription_one = Subscription.new(magazine_five, person_six, 13)
subscription_two = Subscription.new(magazine_five, person_one, 8)
subscription_three = Subscription.new(magazine_one, person_two, 33)
subscription_four = Subscription.new(magazine_one, person_four, 15)
subscription_five = Subscription.new(magazine_three, person_three, 20)
subscription_six = Subscription.new(magazine_two, person_five, 25)
subscription_seven = Subscription.new(magazine_four, person_three, 60)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
