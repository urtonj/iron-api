class Exercise < ActiveRecord::Base
  # Associations
  has_many :exercise_group_exercises
  has_many :exercise_groups, through: :exercise_group_exercises

  # Validations
  validates_presence_of :name
end
