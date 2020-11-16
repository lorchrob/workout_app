class CreateRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :runs do |t|
      t.numeric :length
      t.numeric :duration

      t.timestamps
    end
  end
end
