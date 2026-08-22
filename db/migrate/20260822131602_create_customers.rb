# frozen_string_literal: true

class CreateCustomers < ActiveRecord::Migration[8.1]
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :address, null: false
      t.string :zip_code, null: false
      t.string :city, null: false
      t.string :country, null: false
      t.string :country_code, null: false

      t.timestamps
    end
    add_index :customers, :email, unique: true
  end
end
