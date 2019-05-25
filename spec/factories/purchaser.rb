# frozen_string_literal: true

FactoryBot.define do
  factory :purchaser do
    name { Faker::Name.unique.name }
  end
end
