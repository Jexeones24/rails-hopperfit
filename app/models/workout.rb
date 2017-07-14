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

  def style
    low_vol = ["AMRAP", "EMOM","Rounds for time"]
    med_vol = ["AMRAP", "EMOM", "Rounds for time"]
    hi_vol = ["AMRAP", "Every 2 minutes on the minute for", "Every 3 minutes on the  minute for"]

    if
      self.time_domain.between?(5, 8)
      style = (low_vol).sample
    elsif
      self.time_domain.between?(9, 25)
      style = (med_vol).sample
    else
      style = (hi_vol).sample
    end
    style

  end

  def number_of_movements
    if self.time_domain.between?(5, 8)
      movement_num = rand(1..2)
    elsif self.time_domain.between?(9, 16)
      movement_num = rand(2..3)
    elsif self.time_domain.between?(17, 35)
      movement_num = rand(3..4)
    else
      movement_num = rand(5..6)
    end
    movement_num
  end

end
