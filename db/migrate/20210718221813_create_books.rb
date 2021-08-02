class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :book_title
      t.string :book_author
      t.string :book_url
      t.string :image_url
      t.belongs_to :user, null: false, foreign_key: true
    
      t.timestamps
    end
  end
end
