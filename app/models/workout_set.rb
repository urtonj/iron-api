class WorkoutSet < ActiveRecord::Base
  belongs_to :exercise
  # dependent destroy
  belongs_to :workout

  validates_numericality_of :rep_count, greater_than: 0
  validates_numericality_of :weight, greater_than: 0

  def previous_set
    @previous_set ||= workout.user.sets.where(exercise: exercise).where.not(id: id).
      order(:created_at).last
  end
end
