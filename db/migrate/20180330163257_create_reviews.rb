class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :score
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps null: false
    end
  end
end
