class PaginatedCommentsSerializer < ActiveModel::Serializer
  attributes(
    :comments,
    :is_last_page,
    :next_page
  )

  def next_page
    object.next_page
  end

  def is_last_page
    object.last_page? || object.out_of_range?
  end

  def comments
    object.map do |comment|
      CommentSerializer.new(comment, scope: scope)
    end
  end
end
