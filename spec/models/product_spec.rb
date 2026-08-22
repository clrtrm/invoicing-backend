# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'validations' do
    subject { build(:product) }

    it { is_expected.to validate_presence_of(:label) }
    it { is_expected.to validate_presence_of(:unit) }

    it { is_expected.to validate_presence_of(:vat_rate) }
    it { is_expected.to validate_numericality_of(:vat_rate).is_greater_than_or_equal_to(0) }

    it { is_expected.to validate_presence_of(:unit_price) }
    it { is_expected.to validate_numericality_of(:unit_price).is_greater_than_or_equal_to(0).only_integer }
  end

  describe 'factory' do
    it 'is valid' do
      expect(build(:product)).to be_valid
    end
  end
end
