class PostsController < ApplicationController

def index
    #
end

def show
    # Create the 'post' instance variable that the view will use:
    @post = Post.find(params[:id]);
end

def new
    #
end

def create
    # For testing form successful: render plain: params[:post].inspect

    # Create a 'post' instance variable & set to a new Post with
    #  the specified parameters defined by the 'post_params' method (defined below):
    @post = Post.new(post_params);

    # Save the new Post in the DB and redirect to the show view for this Post:
    @post.save;
    redirect_to @post;
end

# Private methods:

private def post_params
    # Need to specify what parameters a Post can accept:
    params.require(:post).permit(:title, :body);
end

end
