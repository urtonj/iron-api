class WorkoutSet < ActiveRecord::Base
  # Associations
  belongs_to :exercise
  belongs_to :workout

  # Validations
  validates_presence_of :exercise
  validates_presence_of :rep_count
  validates_presence_of :weight
  validates_presence_of :workout
  validates_numericality_of :rep_count, greater_than: 0
  validates_numericality_of :weight, greater_than: 0

  def previous_set
    @previous_set ||= workout.user.sets.where(exercise: exercise).where.not(id: id).
      order(:created_at).last
  end
end
