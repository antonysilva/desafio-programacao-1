# frozen_string_literal: true

FactoryBot.define do
  factory :purchase do
    purchaser { nil }
    item      { nil }
    quantity  { Faker::Number.number(2) }
  end
end