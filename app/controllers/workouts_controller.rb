class WorkoutsController < ApplicationController
  def create
    workout = current_user.workouts.create!(workout_params)

    redirect_to workout_path(workout)
  end

  def show
    @workout = Workout.find(params[:id])
    @last_workout = Workout.where(exercise_group_id: @workout.exercise_group).where.
      not(id: @workout.id).order(:created_at).last
  end

  private

  def workout_params
    params.permit :exercise_group_id
  end
end
