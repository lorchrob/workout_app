class AddUserIdToAbWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :ab_workouts, :user_id, :integer
  end
end
