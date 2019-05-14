class CommentsController < ApplicationController
  def index
    post = Post.find(params[:post_id])
    comments = post.comments
                   .page(params[:page])
                   .per(50)

    render json: comments, serializer: PaginatedCommentsSerializer
  end
end
