class Run < ApplicationRecord
  belongs_to :user
  
  validates :duration, presence: true, numericality: { greater_than: 0, less_than: 181 }
  validates :length, presence: true, numericality: { greater_than: 0, less_than: 181 }
  validates :date, presence: true
end
