class AddReferencesToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :language, foreign_key: true
    remove_column :jobs, :language
  end
end
