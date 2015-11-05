class ExerciseGroupExercise < ActiveRecord::Base
  # Associations
  belongs_to :exercise_group
  belongs_to :exercise

  # Validations
  validates_presence_of :exercise
  validates_presence_of :exercise_group
end
