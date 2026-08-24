# frozen_string_literal: true

class InvoiceLine < ApplicationRecord
  belongs_to :invoice
  belongs_to :product

  validates :label, :unit, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :vat_rate, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true }
end
