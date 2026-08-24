# frozen_string_literal: true

FactoryBot.define do
  factory :invoice_line do
    invoice
    product
    quantity { 1 }
    label { 'Tesla Model S with brand logo' }
    unit { 'Hour' }
    vat_rate { '20.0' }
    price { 1980 }
  end
end
