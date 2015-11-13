require 'rails_helper'

feature 'Workout creation' do
  before do
    user = create(:user)
    exercise = create(:exercise)
    exercise_group = create(:exercise_group, user: user)
    exercise_group.exercises << exercise
    previous_workout = create(:workout, user: user)
    create :workout_set, exercise: exercise, workout: previous_workout, rep_count: 4, weight: 100
  end

  scenario 'user creates and edits a workout and sets' do
    visit exercise_groups_path
    expect(page).to have_content('squat')

    click_button 'start workout'
    click_link 'add set'
    expect(page).to have_field(:workout_set_weight, with: 100)
    expect(page).to have_field(:workout_set_rep_count, with: 4)

    fill_in :workout_set_weight, with: 225
    fill_in :workout_set_rep_count, with: 5
    click_button 'Create Workout set'
    expect(page).to have_content('225 x 5')

    click_link 'edit'
    fill_in :workout_set_weight, with: 135
    fill_in :workout_set_rep_count, with: 10
    click_button 'Update Workout set'
    expect(page).to have_content('135 x 10')
  end
end
