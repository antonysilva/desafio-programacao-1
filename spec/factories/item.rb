# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    description { Faker::Lorem.sentence }
    merchant    { nil }
    price       { Faker::Number.decimal(4) }
  end
end