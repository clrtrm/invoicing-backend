# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :first_name, :last_name, :address, :zip_code, :city, :country, :country_code, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
