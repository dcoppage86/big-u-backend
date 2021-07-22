class DailyEntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content
end
