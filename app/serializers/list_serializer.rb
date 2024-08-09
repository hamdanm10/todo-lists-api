class ListSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :deleted_at, :created_at, :updated_at
  has_many :items
end
