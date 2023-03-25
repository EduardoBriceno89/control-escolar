# frozen_string_literal: true

class AddUserIdToCalificaciones < ActiveRecord::Migration[7.0]
  def change
    add_column :calificaciones, :user_id, :integer
  end
end
