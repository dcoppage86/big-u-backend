class CreateDailyEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_entries do |t|
    t.string :title
    t.text :content
    t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
