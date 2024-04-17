class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :apartments, :smart_security_system, :boolean
    add_column :apartments, :rooftop_pool, :boolean
  end
end
