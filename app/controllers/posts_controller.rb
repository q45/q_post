class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :vote]
  before_action :require_user, only: [:new, :create, :edit, :update, :vote]
  #1.set up a variable
  #2. prevents execution of the action

  def index
    @post = Post.all
    @post_size = Post.all.size

    respond_to do |format|


      format.html {render :index}
      format.js {render json: @post}
      format.json {render json: @post}
      format.xml {render xml: @post}


    end    
  end

  def new
  	@post = Post.new
  end

  def create
    
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
<<<<<<< HEAD
  	 
    respond_to do |format|
      format.html 
      format.json {render json: @post}
    end

=======
    @post = Post.
  	
>>>>>>> be4fc2f1bd7c57b576a5e05ad8fcf6fe52a26bb4
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

  def vote
    vote  = Vote.create(voteable: @post, user: current_user, vote: params[:vote])
  
    respond_to do |format|
      format.html do
        flash[:notice] =  "Your vote was counted"
        redirect_to root_path
      end
        format.js
    end

  end

  private 

    def set_post
      @post = Post.find_by(slug: params[:id])
    end


    def post_params
      params.require(:post).permit(:title, :url, :description, :category_ids)
    end
  end
end  
