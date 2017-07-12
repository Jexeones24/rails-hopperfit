class Hopper < ActiveRecord::Base
  belongs_to :workout

  def choose_movements
     #movements would be instances
    Movement.all.sample(self.number_of_movements)
  end

  #iterate over array and assign each movement reps
  def assign_reps(movement_array)
    movement_array.map do |movement|
      if movement.rep_range == "Low"
        rand(3..10)
      elsif movement.rep_range == "Moderate"
        rand(11..30)
      else
        rand(31..70)
      end
    end
  end


end
