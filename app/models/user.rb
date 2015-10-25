class User < ActiveRecord::Base
  has_many :exercise_groups
  has_many :workouts
end
