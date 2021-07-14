class DailyEntry < ActiveRecord::Migration[6.1]
  def change
    t.string :title
    t.date :date
    t.text :content
    t.belongs_to :user, class_name: "user", foreign_key: "user_id"
    
    
  end
end
