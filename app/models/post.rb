class Post < ApplicationRecord
    def index
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
    end

private

    def post_params
        params.require(:post).permit(:title, :content)
    end
end
