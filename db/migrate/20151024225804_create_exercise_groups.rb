class CreateExerciseGroups < ActiveRecord::Migration
  def change
    create_table :exercise_groups do |t|
      t.references :user, null: false

      t.timestamps
    end
  end
end
