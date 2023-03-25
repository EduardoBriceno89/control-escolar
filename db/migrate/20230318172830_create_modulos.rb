# frozen_string_literal: true

class CreateModulos < ActiveRecord::Migration[7.0]
  def change
    create_table :modulos do |t|
      t.integer :modulo

      t.timestamps
    end
  end
end
