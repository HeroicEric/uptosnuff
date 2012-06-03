FactoryGirl.define do

  factory :task do
    sequence(:title) { |n| "example task title #{n}" }
  end

end
