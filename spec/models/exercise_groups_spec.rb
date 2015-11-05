require 'rails_helper'

describe ExerciseGroup do
  # Associations
  it { should belong_to(:user) }
  it { should have_many(:exercise_group_exercises) }
  it { should have_many(:exercises).through(:exercise_group_exercises) }
  it { should have_many(:workouts) }

  # Validations
  it { should validate_presence_of(:user) }
end
