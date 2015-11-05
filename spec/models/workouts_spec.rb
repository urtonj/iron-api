require 'rails_helper'

describe Workout do
  # Associations
  it { should belong_to(:exercise_group) }
  it { should belong_to(:user) }
  it { should have_many(:exercises) }
  it { should have_many(:sets).dependent(:destroy) }

  # Validations
  it { should validate_presence_of(:exercise_group) }
  it { should validate_presence_of(:user) }
end
