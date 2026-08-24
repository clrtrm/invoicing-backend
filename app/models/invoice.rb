# frozen_string_literal: true

class Invoice < ApplicationRecord
  belongs_to :customer

  validates :date, :deadline, presence: true
end
