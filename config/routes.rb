Rails.application.routes.draw do
  resources :exercise_groups, only: :index
  resources :workouts, only: [:create, :show]
  resources :workout_sets, only: [:create, :new]
end
