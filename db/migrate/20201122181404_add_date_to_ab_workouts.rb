class AddDateToAbWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :ab_workouts, :date, :date
  end
end
