class DailyEntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :user_id
end
