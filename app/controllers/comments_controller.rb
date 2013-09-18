class CommentsController < ApplicationController

def show
	@comment = Comment.find(:id)
end

end