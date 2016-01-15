FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "first#{n}"}
    sequence(:last_name) { |n| "last#{n}"}
    sequence(:email) { |n| "user#{n}@example.com"}
    sequence(:password) { |n| "password#{n}"}

    factory :user_with_cards do
      cards factory: :card
    end
  end
end
