# frozen_string_literal: true

FactoryBot.define do
  factory :customer do
    first_name { 'Jean' }
    last_name { 'Dupont' }
    sequence(:email) { |n| "customer#{n}@example.com" }
    address { '9 impasse Sauvey' }
    zip_code { '50100' }
    city { 'Cherbourg' }
    country { 'France' }
    country_code { 'FR' }
  end
end
