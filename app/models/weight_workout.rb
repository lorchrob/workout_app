class WeightWorkout < ApplicationRecord
  belongs_to :user
  
  validates :duration, presence: true, numericality: { greater_than: 0, less_than: 181 }
  validates :date, presence: true
  
  def self.workouts
    ['bench press', 'dumbbell fly', 'pull up', 'corner row', 'squat', 'deadlift', 'hamstring curl', 'calf raise', 'military press', 'lateral raise', 'curl', 'tricep pull down']
  end
end
