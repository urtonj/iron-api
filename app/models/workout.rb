class Workout < ActiveRecord::Base
  # Associations
  belongs_to :exercise_group
  belongs_to :user
  has_many :exercises, through: :exercise_group
  has_many :sets, class_name: 'WorkoutSet', dependent: :destroy

  # Validations
  validates_presence_of :exercise_group
  validates_presence_of :user
end
