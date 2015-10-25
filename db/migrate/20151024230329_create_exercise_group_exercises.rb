class CreateExerciseGroupExercises < ActiveRecord::Migration
  def change
    create_table :exercise_group_exercises do |t|
      t.references :exercise
      t.references :exercise_group
    end
  end
end
