class WeightWorkout < ApplicationRecord
  def self.workouts
    ['bench press', 'dumbbell fly', 'pull up', 'corner row', 'squat', 'deadlift', 'hamstring curl', 'calf raise', 'military press', 'lateral raise', 'curl', 'tricep pull down']
  end
end