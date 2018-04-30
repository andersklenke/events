# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Users
100.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password)
end

# Events
Event.create(name: 'April Ruby Meetup - Hack Night', date: DateTime.new(2018, 4, 11, 17))
Event.create(
  name: 'Ruby Talks Night at Karnov',
  date: DateTime.new(2018, 5, 9, 17),
  description: 'A string of talks for you interpolated with food, drinks and friendly conversation.'\
               'We have three speakers confirmed!'\
               '1) "Web for everyone" by Max Cilauro'\
               'We will go through which devices and tools people with disabilities use to navigate the web and what can we do as developers to improve their experience.'\
               '2) "Getting started with GraphQL" by Anders Klenke'\
               '3) "Writing a Ruby coding game" by Ignacio Huerta'\
               'We will explore the tricks and hacks to build a little coding game using Docker, Ruby, Cloud9 and some bash tricks.'\
               'Good to know: We operate under the Berlin Code of Conduct')
Event.create(name: 'June Ruby Meetup - Hack Night', date: DateTime.new(2018, 6, 13, 17))

# Participants
Event.all.each do |event|
  User.all.sample(25).map do |user|
    Participant.create(event: event, user: user)
  end
end
