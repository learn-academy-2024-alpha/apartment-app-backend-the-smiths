class AddAptNameCol < ActiveRecord::Migration[7.1]
  def change
    add_column :apartments, :name, :string
  end
end
