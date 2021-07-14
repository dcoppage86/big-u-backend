class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :children
      t.string :parents
      t.string :adult

      t.timestamps
    end
  end
end
