require 'json'

movements = File.read('./tools/movement_library.json')
MOVEMENT_LIB = JSON.parse(movements)

class Hopper < ApplicationRecord
  has_one :workout
  has_many :movements


  def number_of_movements(time_domain)
    movement_num = nil
    if time_domain["time_domain"].to_i.between?(5, 10)
      movement_num = rand(1..3)
    elsif time_domain["time_domain"].to_i.between?(11, 30)
      movement_num = rand(3..5)
    else
      movement_num = rand(5..8)
    end
    byebug
  end

  def choose_movements(movement_num)
    byebug
    movement_objects_array = MOVEMENT_LIB["movements"].sample(movement_num).map { |obj| Movement.new(name: obj["name"], style: obj["style"], rep_range: obj["rep_range"]) }
  end


  # movement_num => 3
  # create x amount Movement.new
  # @movement_num.times do (choose movement randomly json)
  # Movement.new(params hash) ???
  #

  def create_workout
    @workout = Workout.create(self)
  end

  # def self.hoppify(time_domain)
  #   movement_num = self.number_of_movements(time_domain)
  #   self.choose_movements(movement_num)
  #   self.each_movement(new_movements) #undefined local variable or method 'new_movements' for <#Class82493647836>
  #   self.rep_range
  # end


end
