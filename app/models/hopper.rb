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
        rand(3..8)
      elsif movement.rep_range == "Moderate"
        rand(9..20)
      elsif movement.rep_range == "Meters"
        "400 Meter"
      elsif movement.rep_range == "Minutes"
        "1 Minute"
      else
        rand(21..40)
      end
    end
  end


end
