class ExerciseGroup < ActiveRecord::Base
  # Associations
  belongs_to :user
  has_many :exercise_group_exercises
  has_many :exercises, through: :exercise_group_exercises
  has_many :workouts

  # Validations
  validates_presence_of :user
end
