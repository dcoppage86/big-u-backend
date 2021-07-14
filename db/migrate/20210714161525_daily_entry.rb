class DailyEntry < ActiveRecord::Migration[6.1]
  def change
    t.string :title
    t.date :date
    t.text :content
    t.belongs_to :user, null: false, foreign_key: true
    
    
  end
end
