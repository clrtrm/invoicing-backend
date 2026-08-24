# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InvoiceLine, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:invoice) }
    it { is_expected.to belong_to(:product) }
  end

  describe 'validations' do
    subject { build(:invoice_line) }

    it { is_expected.to validate_presence_of(:label) }
    it { is_expected.to validate_presence_of(:unit) }

    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_numericality_of(:quantity).is_greater_than(0).only_integer }

    it { is_expected.to validate_presence_of(:vat_rate) }
    it { is_expected.to validate_numericality_of(:vat_rate).is_greater_than_or_equal_to(0) }

    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_numericality_of(:price).is_greater_than_or_equal_to(0).only_integer }
  end

  describe 'factory' do
    it 'is valid' do
      expect(build(:invoice_line)).to be_valid
    end
  end
end
