class Hopper
  @@workout = []
  @@rep_array = []

  def self.choose_movements(num)
    Movement.all.sample(num) #movements would be instances
  end

  #iterate over array and assign each movement reps
  def self.assign_reps(movement_array)
    movement_array.map do |movement|
      if movement["rep_range"] == "Low"
        reps = rand(3..10)
        self.rep_array << reps
      elsif movement["rep_range"] == "Moderate"
        reps = rand(11..30)
        self.rep_array << reps
      else
        reps = rand(31..70)
        self.rep_array << reps
      end
      byebug
    end
  end

  def self.workout
    @@workout
  end

  def self.rep_array
    @@rep_array
  end

end
