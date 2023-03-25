# frozen_string_literal: true

class CreateCalificaciones < ActiveRecord::Migration[7.0]
  def change
    create_table :calificaciones do |t|
      t.decimal :promedio

      t.timestamps
    end
  end
end
