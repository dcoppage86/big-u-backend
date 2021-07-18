class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.belongs_to :user
      t.belongs_to :library

      t.timestamps
    end
  end
end
