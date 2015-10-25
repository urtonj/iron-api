require 'rails_helper'

describe ExerciseGroupExercise do
  it { should belong_to(:exercise) }
  it { should belong_to(:exercise_group) }
end
