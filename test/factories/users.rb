FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email_address do
      "#{first_name.downcase}.#{last_name.downcase}@example.com"
    end
  end
end
