# frozen_string_literal: true

class CreateInvoices < ActiveRecord::Migration[8.1]
  def change
    create_table :invoices do |t|
      t.references :customer, null: false, foreign_key: true
      t.boolean :finalized, null: false, default: false
      t.boolean :paid, null: false, default: false
      t.date :date, null: false
      t.date :deadline, null: false

      t.timestamps
    end
  end
end
