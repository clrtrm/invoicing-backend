# frozen_string_literal: true

class CreateInvoiceLines < ActiveRecord::Migration[8.1]
  def change
    create_table :invoice_lines do |t|
      t.references :invoice, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity, null: false
      t.string :label, null: false
      t.string :unit, null: false
      t.decimal :vat_rate, precision: 5, scale: 2, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
