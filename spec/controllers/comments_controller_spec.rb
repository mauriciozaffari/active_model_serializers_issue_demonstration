require 'rails_helper'

describe CommentsController, type: :controller do
  before do
    @post = Post.create
    comment = @post.comments.create
  end

  describe '#index' do
    it 'renders successfully' do
      get :index, params: { post_id: @post.id }

      expect(response.status).to equal(200)
    end
  end
end
