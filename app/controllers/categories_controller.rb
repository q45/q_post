class CategoriesController < ApplicationController
	before_action :require_admin
	
	def index

	end

	def show
<<<<<<< HEAD
		@categories = Category.all
		@post = Post.find(params[:id])
		@show_category = Category.find_by(params[:id])
=======
		@category = Category.find(params[:id])
>>>>>>> ffaf6e4b79f08b6df42cba43d67517efef6e214c
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.create(category_params)
			if @category.save
				flash[:notice] = "Category created successfully"
				redirect_to root_path
			else
				render :new
			end
	end

	def edit

	end

	def update

	end

	def destroy

	end

	private

	def category_params
			params.require(:category).permit(:name)
	end

end