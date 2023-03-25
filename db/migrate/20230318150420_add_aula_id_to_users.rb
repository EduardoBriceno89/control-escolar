class AddAulaIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :aula_id, :integer
  end
end
