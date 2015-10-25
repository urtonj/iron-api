require 'rails_helper'

describe WorkoutSet do
  it { should belong_to(:exercise) }
  it { should belong_to(:workout) }

  it { should validate_numericality_of(:rep_count).is_greater_than(0) }
  it { should validate_numericality_of(:weight).is_greater_than(0) }
end
