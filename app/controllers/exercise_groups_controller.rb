class ExerciseGroupsController < ApplicationController
  def index
    @exercise_groups = current_user.exercise_groups
  end
end
