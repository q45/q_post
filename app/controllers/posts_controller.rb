class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]
  before_action :require_user, only: [:new, :create, :edit, :update]
  #1.set up a variable
  #2. prevents execution of the action

  def index
    @post = Post.all
    @category = Category.all
  end

  def new
  	@post = Post.new
  end

  def create
    #binding pry
  	@post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      flash[:notice] = "you created a post"
      redirect_to root_path
    else

      render :new
    end

  end

  def show
    @comment =  Comment.new
  	
  end

  def edit
  	
  end

  def update
  	
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

  def set_post
    @post = Post.find_by(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :url, :description, :category_ids)
  end

  
end
