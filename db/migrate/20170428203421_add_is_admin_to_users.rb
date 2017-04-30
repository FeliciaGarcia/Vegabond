class AddIsAdminToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_admin, :boolean
    add_column :users, :full_name, :string
  end
end
