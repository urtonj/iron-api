class ExerciseGroup < ActiveRecord::Base
  belongs_to :user
  has_many :exercise_group_exercises
  has_many :exercises, through: :exercise_group_exercises
  has_many :workouts
end
