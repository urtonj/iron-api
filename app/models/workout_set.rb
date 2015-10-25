class WorkoutSet < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :workout

  validates_numericality_of :rep_count, greater_than: 0
  validates_numericality_of :weight, greater_than: 0
end
