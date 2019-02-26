class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.string :language
      t.date :start_date
      t.date :end_date
      t.date :date_posted
      t.integer :budget
      t.string :status
      t.references :user, index: true, foreign_key: { to_table: :users}
      t.references :interpreter, index: true, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
