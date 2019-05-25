# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :item
  belongs_to :purchaser

  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
