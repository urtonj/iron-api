class WorkoutSetsController < ApplicationController
  def create
    set = WorkoutSet.create!(workout_set_params)

    redirect_to workout_path set.workout_id
  end

  def new
    @set = WorkoutSet.new(workout_set_params)
  end

  private

  def workout_set_params
    params.require(:workout_set).permit(:exercise_id, :workout_id, :rep_count, :weight)
  end
end
