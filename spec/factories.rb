FactoryGirl.define do
  factory :todo do
    owner_email { "person@example.com" }

    trait :completed do
      completed_at { Time.current }
    end

    trait :incomplete do
      completed_at nil
    end
  end
end
