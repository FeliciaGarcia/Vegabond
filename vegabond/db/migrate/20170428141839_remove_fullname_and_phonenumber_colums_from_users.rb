class RemoveFullnameAndPhonenumberColumsFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :full_name
    remove_column :users, :phone_number
  end
end
