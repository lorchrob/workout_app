class AbWorkout < ApplicationRecord
  belongs_to :user
  
  validates :duration, presence: true, numericality: { greater_than: 0, less_than: 181 }
  validates :date, presence: true
  
  def self.workouts
    ['crunch', 'sit up', 'plank', 'bicycle', 'mountain climber', 'flutter kick', 'Russian twist', 'leg lift']
  end
end
