FactoryGirl.define do
  factory :card do
    emotions ["happy"]
    intensity "10"
    thoughts "so happy"
    reflection "but not too happy"
    user factory: :user
  end
end
