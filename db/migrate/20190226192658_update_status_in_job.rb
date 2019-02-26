class UpdateStatusInJob < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :status, :string, default: 'Not started'
  end
end
