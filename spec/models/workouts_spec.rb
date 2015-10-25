require 'rails_helper'

describe Workout do
  it { should belong_to(:exercise_group) }
  it { should have_many(:exercises) }
  it { should have_many(:sets) }
  it { should belong_to(:user) }
end
