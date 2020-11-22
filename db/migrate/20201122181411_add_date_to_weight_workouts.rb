class AddDateToWeightWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :weight_workouts, :date, :date
  end
end
