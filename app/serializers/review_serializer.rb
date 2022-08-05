class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :score, :project_id
end
