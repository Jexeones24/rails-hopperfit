class Workout < ApplicationRecord
  has_many :comments
  has_many :hoppers
  has_many :workout_movements
  has_many :movements, through: :workout_movements
  has_many :user_workouts
  has_many :users, through: :user_workout

  def faker
    [Faker::Superhero.suffix,
    Faker::Hobbit.location,
    Faker::Dessert.topping,
    Faker::Team.name,
    Faker::Overwatch.hero,
    Faker::LeagueOfLegends.summoner_spell,
    Faker::LeagueOfLegends.masteries,
    Faker::LeagueOfLegends.rank,
    Faker::Food.dish,
    Faker::Dessert.flavor,
    Faker::Dessert.variety,
    Faker::Ancient.god,
    Faker::Ancient.hero,
    Faker::Ancient.titan,
    Faker::Ancient.primordial].sample
  end



  def number_of_movements
    if self.time_domain.between?(5, 15)
      movement_num = rand(2..3)
    elsif self.time_domain.between?(16, 35)
      movement_num = rand(3..5)
    else
      movement_num = rand(6..8)
    end
    movement_num
  end


end
