class Exercise < ActiveRecord::Base
  has_many :exercise_group_exercises
  has_many :exercise_groups, through: :exercise_group_exercises
end
