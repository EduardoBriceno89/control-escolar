# frozen_string_literal: true

class CreateAulas < ActiveRecord::Migration[7.0]
  def change
    create_table :aulas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
