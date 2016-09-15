# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create users
bob = User.create(username: 'BobRules', email: 'hello@hello.com')
bab = User.create(username: 'Ted', email: 'bye@bye.com')

# create challenges
ping_pong = Challenge.create(title: 'ping-pong masters',
                            description: 'Who is the ping-pong master?',
                            ante: 'A round of beers',
                            challenger: bab.id,
                            owner: bob.id,
                            ante_settled: false)
poker     = Challenge.create(title: 'poker masters',
                            description: 'Who is the poker master?',
                            ante: 'A bag of peanuts',
                            challenger: bob.id,
                            owner: bab.id,
                            winner: bob.username,
                            ante_settled: true)

# create comments
Comment.create(message: "WINNING!", user_id: bob.id, challenge_id: ping_pong.id)
Comment.create(message: "Peanuts <3!", user_id: bab.id, challenge_id: poker.id)
