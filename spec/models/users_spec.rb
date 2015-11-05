require 'rails_helper'

describe User do
  # Associations
  it { should have_many(:exercise_groups) }
  it { should have_many(:sets) }
  it { should have_many(:workouts) }

  # Validations
  it { should validate_presence_of(:email) }
end
