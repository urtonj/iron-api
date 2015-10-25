class CreateExerciseGroupExercises < ActiveRecord::Migration
  def change
    create_table :exercise_group_exercises do |t|
      t.references :exercise, null: false
      t.references :exercise_group, null: false
    end
  end
end
