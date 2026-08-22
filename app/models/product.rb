# frozen_string_literal: true

class Product < ApplicationRecord
  validates :label, :unit, presence: true
  validates :vat_rate, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :unit_price, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true }
end
