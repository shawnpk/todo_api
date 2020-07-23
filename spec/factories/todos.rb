# frozen_string_literal: true

FactoryBot.define do
  factory :todo do
    user
    title { Faker::Lorem.word }
    created_by { Faker::Number.number(digits: 10) }
  end
end
