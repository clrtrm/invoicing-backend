# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :label, null: false
      t.decimal :vat_rate, precision: 5, scale: 2, null: false
      t.string :unit, null: false
      t.integer :unit_price, null: false

      t.timestamps
    end
  end
end
