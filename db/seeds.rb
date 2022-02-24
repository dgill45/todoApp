# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Task.create!(text: 'Take out the trash', isCompleted: false)
Task.create!(text: 'Wash the dishes.', isCompleted: false )
Task.create!(text: 'Do laundry.', isCompleted: false )
Task.create!(text: 'Clean kitchen.', isCompleted: false )
Task.create!(text: 'Blow out leaves.', isCompleted: false )
Task.create!( text: "Learn about React", isCompleted: false )
Task.create!( text: "Meet friend for lunch", isCompleted: false )
Task.create!( text: "Build really cool todo app", isCompleted: false )