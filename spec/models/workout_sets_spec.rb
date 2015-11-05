require 'rails_helper'

describe WorkoutSet do
  # Associations
  it { should belong_to(:exercise) }
  it { should belong_to(:workout) }

  # Validations
  it { should validate_presence_of(:exercise) }
  it { should validate_presence_of(:rep_count) }
  it { should validate_presence_of(:weight) }
  it { should validate_presence_of(:workout) }
  it { should validate_numericality_of(:rep_count).is_greater_than(0) }
  it { should validate_numericality_of(:weight).is_greater_than(0) }

  context '#previous_set' do
    before do
      user = create(:user)
      exercise = create(:exercise)
      workout = create(:workout, user_id: user.id)
      create :workout_set, exercise_id: exercise.id, workout_id: workout.id
      @previous_set = create(:workout_set, exercise_id: exercise.id,
        workout_id: workout.id)
      @new_set = create(:workout_set, exercise_id: exercise.id, workout_id: workout.id)
    end

    it 'returns the previous set' do
      expect(@new_set.previous_set).to eq(@previous_set)
    end
  end
end
