class User < ActiveRecord::Base
  # Associations
  has_many :exercise_groups
  has_many :sets, through: :workouts, class_name: 'WorkoutSet'
  has_many :workouts

  # Validations
  validates_presence_of :email
end
