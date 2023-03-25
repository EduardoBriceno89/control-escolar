# frozen_string_literal: true

class AddAulaIdToAsignaturas < ActiveRecord::Migration[7.0]
  def change
    add_column :asignaturas, :aula_id, :integer
  end
end
