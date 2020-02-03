class NoteSerializer < ActiveModel::Serializer
  attributes :id, :bake_id, :title, :content
end
