class WorkoutSet < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :workout

  validates_numericality_of :rep_count, greater_than: 0
  validates_numericality_of :weight, greater_than: 0

  def previous_set
    @previous_set ||= workout.user.sets.where(exercise: exercise).order(:created_at).last
  end
end
