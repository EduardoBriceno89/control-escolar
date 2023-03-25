# frozen_string_literal: true

class AddModuloIdToCalificaciones < ActiveRecord::Migration[7.0]
  def change
    add_column :calificaciones, :modulo_id, :integer
  end
end
