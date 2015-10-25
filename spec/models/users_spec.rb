require 'rails_helper'

describe User do
  it { should have_many(:exercise_groups) }
  it { should have_many(:workouts) }
end
