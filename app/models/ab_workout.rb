class AbWorkout < ApplicationRecord
  belongs_to :user
  
  def self.workouts
    ['crunch', 'sit up', 'plank', 'bicycle', 'mountain climber', 'flutter kick', 'Russian twist', 'leg lift']
  end
end
