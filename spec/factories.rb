FactoryGirl.define do
  factory :exercise do
    name 'squat'
  end

  factory :exercise_group do
    user
  end

  factory :user do
    email 'jason.urton@gmail.com'
  end

  factory :workout do
    exercise_group
  end

  factory :workout_set do
    rep_count 5
    weight 225
  end
end
