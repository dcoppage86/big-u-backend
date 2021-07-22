class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :childs_name, :username, :email
  attribute :daily_entries do |entry|
    entry.daily_entries.map do |ent|
      {
        title: ent.title,
        content: ent.content
      }
    end
  end
  # belongs_to :collection
  # has_many :comments
  # has_many :daily_entries, serializer: DailyEntrySerializer
  # has_many :books
end
