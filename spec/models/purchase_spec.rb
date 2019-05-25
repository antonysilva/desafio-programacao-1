# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Purchase, type: :model do
  subject { build(:purchase) }

  describe 'Relationships' do
    it { is_expected.to belong_to(:item) }
    it { is_expected.to belong_to(:purchaser) }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_numericality_of(:quantity).is_greater_than(0) }
end
end
