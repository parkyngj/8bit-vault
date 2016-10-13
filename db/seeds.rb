require 'faker'

sally = User.create(username: 's', email: 's@s.s', password: 's')

our_users = [sally]

100.times {
  our_users << User.create(username: Faker::Name.first_name,
              email: Faker::Internet.email,
              password: 'password')
}

our_games = []

10.times{
  users = our_users.sample(5)
  our_games << Game.create(name: Faker::App.name).users = users
}
