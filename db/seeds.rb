# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
10.times do
  Todo.create(
    title: Faker::Lorem.sentence,
    completed: Faker::Boolean.boolean,
    order: Faker::Number.non_zero_digit
  )
end

10.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
