class CommentSerializer < ActiveModel::Serializer
  attributes(
    :id,
    :author,
    :body,
    :post_id,
    :created_at
  )
end
