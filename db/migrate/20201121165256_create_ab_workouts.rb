class CreateAbWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :ab_workouts do |t|
      t.numeric :duration

      t.timestamps
    end
  end
end
