class Workout < ActiveRecord::Base
  belongs_to :exercise_group
  has_many :exercises, through: :exercise_group
  belongs_to :user
  has_many :sets, class_name: 'WorkoutSet', dependent: :destroy
end
