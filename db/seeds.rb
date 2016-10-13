sally = User.create(username: 's', email: 's@s.s', password: 's')

our_users = [sally]

50.times {
  our_users << User.create(username: Faker::Name.first_name,
              email: Faker::Internet.email,
              password: 'password')
}

our_games = []

50.times {
  our_games << Game.create(name: Faker::App.name)
}

100.times {
  Ownership.create(owner: our_users.sample, game: our_games.sample)
}

# This is what was here when we had Game and User have has_and_belongs_to_many
# 10.times{
#   users = our_users.sample(5)
#   our_games << Game.create(name: Faker::App.name).users = users
# }
