# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :merchant

  validates :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
