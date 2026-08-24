# frozen_string_literal: true

class Invoice < ApplicationRecord
  belongs_to :customer
  has_many :invoice_lines, dependent: :destroy
  accepts_nested_attributes_for :invoice_lines, allow_destroy: true

  validates :date, :deadline, presence: true
end
