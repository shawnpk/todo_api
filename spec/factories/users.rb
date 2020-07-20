FactoryBot.define do
  factory :user do
    name                  { Faker::Name.name }
    email                 { 'user@example.com' }
    password              { 'fakepass' }
    password_confirmation { 'fakepass' }
  end
end
