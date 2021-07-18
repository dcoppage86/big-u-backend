class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category_1
      t.string :category_2
      t.string :category_3

      t.timestamps
    end
  end
end
