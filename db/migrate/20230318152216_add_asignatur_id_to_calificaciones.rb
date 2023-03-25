class AddAsignaturIdToCalificaciones < ActiveRecord::Migration[7.0]
  def change
    add_column :calificaciones, :asignatura_id, :integer
  end
end
