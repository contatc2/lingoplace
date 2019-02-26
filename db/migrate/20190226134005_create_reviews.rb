class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :stars
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
