class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.references :exercise_group, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
