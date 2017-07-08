# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

squat = Movement.create!(name: "Squat", style: "Weightlifting", rep_range: "Moderate")
snatch = Movement.create!(name: "Snatch", style: "Weightlifting", rep_range: "Moderate")
pullup = Movement.create!(name: "Pullup", style: "Gymnastics", rep_range: "High")
situp = Movement.create!(name: "Situp", style: "Gymnastics", rep_range: "High")
deadlift = Movement.create!(name: "Deadlift", style: "Weightlifting", rep_range: "Low")

sally = User.create!(name: "Sally Jensen")
bobby = User.create!(name: "Bobby Bains")
george = User.create!(name: "George Jetson")
hector = User.create!(name: "Hector Projector")

ball_crusher = Workout.create(hopper_id: 1)
thrasher = Workout.create(hopper_id: 2)
heaven_and_hell = Workout.create(hopper_id: 3)
wall_in_the_park = Workout.create(hopper_id: 4)

hopper1 = Hopper.create(time_domain: 5, movement_id: 1)
hopper2 = Hopper.create(time_domain: 5, movement_id: 2)
hopper3 = Hopper.create(time_domain: 5, movement_id: 3)
hopper4 = Hopper.create(time_domain: 5, movement_id: 4)
