require 'rails_helper'

describe Exercise do
  # Associations
  it { should have_many(:exercise_group_exercises) }
  it { should have_many(:exercise_groups).through(:exercise_group_exercises) }

  # Validations
  it { should validate_presence_of(:name) }
end
