class WorkoutsController < ApplicationController
  def create
    workout = current_user.workouts.create!(workout_params)

    redirect_to workout_path(workout)
  end

  def show
    @workout = Workout.find(params[:id])
  end

  private

  def workout_params
    params.permit(:exercise_group_id)
  end
end
