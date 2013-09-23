class CommentsController < ApplicationController

def create
	@post = Post.find_by(slug: params[:post_id]) 
	#@comment = Comment.new(comment_params)
	#@comment.post = @post # these two are the same as line 8

	@comment = @post.comments.build(comment_params) #build is the same thing as new

	@comment.user_id = current_user

	if @comment.save
		flash[:notice] = "Your comment was saved"
		redirect_to post_path(@post)
	else
		render 'posts/show'
	end

	#I need to associate this comment with a post. This is how to do it.
end

private

def comment_params
	params.require(:comment).permit(:body)
end

end