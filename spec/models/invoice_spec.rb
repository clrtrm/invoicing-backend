# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Invoice, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:customer) }
  end

  describe 'validations' do
    subject { build(:invoice) }

    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_presence_of(:deadline) }
  end

  describe 'factory' do
    it 'is valid' do
      expect(build(:invoice)).to be_valid
    end
  end
end
