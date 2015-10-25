class ExerciseGroupExercise < ActiveRecord::Base
  belongs_to :exercise_group
  belongs_to :exercise
end
