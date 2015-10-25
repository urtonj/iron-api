class User < ActiveRecord::Base
  has_many :exercise_groups
  has_many :sets, through: :workouts, class_name: 'WorkoutSet'
  has_many :workouts
end
