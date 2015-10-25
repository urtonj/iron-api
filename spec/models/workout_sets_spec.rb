require 'rails_helper'

describe WorkoutSet do
  it { should belong_to(:exercise) }
  it { should belong_to(:workout) }

  it { should validate_numericality_of(:rep_count).is_greater_than(0) }
  it { should validate_numericality_of(:weight).is_greater_than(0) }

  context '#previous_set' do
    before do
      user = FactoryGirl.create(:user)
      exercise = FactoryGirl.create(:exercise)
      workout = FactoryGirl.create(:workout, user_id: user.id)
      FactoryGirl.create :workout_set, exercise_id: exercise.id, workout_id: workout.id
      @previous_set = FactoryGirl.create(:workout_set, exercise_id: exercise.id,
        workout_id: workout.id)
      @new_set = FactoryGirl.create(:workout_set, exercise_id: exercise.id, workout_id: workout.id)
    end

    it 'returns the previous set' do
      expect(@new_set.previous_set).to eq(@previous_set)
    end
  end
end
