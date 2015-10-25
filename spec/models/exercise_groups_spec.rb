require 'rails_helper'

describe ExerciseGroup do
  it { should have_many(:exercise_group_exercises) }
  it { should have_many(:exercises).through(:exercise_group_exercises) }
  it { should belong_to(:user) }
  it { should have_many(:workouts) }
end
