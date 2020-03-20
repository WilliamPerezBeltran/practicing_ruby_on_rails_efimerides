# frozen_string_literal: true

class CreateEfimeridas < ActiveRecord::Migration[5.2]
  def change
    create_table :efimeridas do |t|
      t.string :text
      t.date :date
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
