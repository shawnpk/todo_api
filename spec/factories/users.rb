FactoryBot.define do
  factory :user do
    name            { Faker::Name.name }
    email           { 'user@example.com' }
    password_digest { 'fakepass' }
  end
end
