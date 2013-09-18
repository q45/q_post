class PostsController < ApplicationController
  def index
    @post = Post.all
    @category = Category.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)

    if @post.save
      flash[:notice] = "you created a post"
      redirect_to root_path
    else

      render :new
    end

  end

  def show
  	@post = Post.find(params[:id])
  end

  def edit
  	@post = Post.find_by(params[:id])
  end

  def update
  	@post = Post.find(params[:id])

    if @post.save
      flash[:notice] = "Updated Successfully"
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
  	@post = Post.find_by(params[:id])
  end

  private 

  def post_params
    params.require(:post).permit!
  end

  
end
