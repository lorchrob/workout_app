class CreateWeightWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :weight_workouts do |t|
      t.numeric :duration

      t.timestamps
    end
  end
end
