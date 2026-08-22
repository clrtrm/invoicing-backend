# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    label { 'Tesla Model S' }
    vat_rate { 20.0 }
    unit { 'hour' }
    unit_price { 1980 }
  end
end
