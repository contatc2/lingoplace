class AddFirstNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :description, :string
    add_column :users, :picture, :string
    add_column :users, :availability, :string
    add_column :users, :location, :string
    add_column :users, :can_travel, :boolean
    add_column :users, :interpreter, :boolean
    add_column :users, :phone, :string
    add_column :users, :daily_rate, :integer
    add_column :users, :linkedin, :string
  end
end
