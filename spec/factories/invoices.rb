# frozen_string_literal: true

FactoryBot.define do
  factory :invoice do
    customer
    date { Date.current } # A str like "2026-08-24" works too: when AR sees db column is date, it parses str into date
    deadline { Date.current + 30.days }
    finalized { false }
    paid { false }
  end
end
