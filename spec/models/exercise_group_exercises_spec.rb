require 'rails_helper'

describe ExerciseGroupExercise do
  # Associations
  it { should belong_to(:exercise) }
  it { should belong_to(:exercise_group) }

  # Validations
  it { should validate_presence_of(:exercise) }
  it { should validate_presence_of(:exercise_group) }
end
