class CommentsController < ApplicationController

    def create

        # Create a 'post' instance variable:
        @post = Post.find(params[:post_id]);

        # Create a 'comment' variable within the post variable:
        @comment = @post.comments.create(comment_params);

        redirect_to post_path(@post);
    end


    # Private methods:

    private def comment_params
        params.require(:comment).permit(:username, :body);
    end

end
