class ItemSerializer
  include JSONAPI::Serializer
  attributes :list_id, :title, :is_checked_flag, :deleted_at, :created_at, :updated_at
end
