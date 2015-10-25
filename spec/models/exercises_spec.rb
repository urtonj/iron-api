require 'rails_helper'

describe Exercise do
  it { should have_many(:exercise_group_exercises) }
  it { should have_many(:exercise_groups).through(:exercise_group_exercises) }
end
