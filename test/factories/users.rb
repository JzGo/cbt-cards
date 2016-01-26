FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "first#{n}"}
    sequence(:last_name) { |n| "last#{n}"}
    sequence(:email) { |n| "user#{n}@example.com"}
    sequence(:password) { |n| "password#{n}"}

    factory :user_with_cards do
      transient do
        cards_count 5
      end
    end

    factory :provider do
      sequence(:email) { |n| "provider#{n}@example.com"}
    end
  end
end
