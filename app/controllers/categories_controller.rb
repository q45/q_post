class CategoriesController < ApplicationController
	before_action :require_admin
	
	def index

	end

	def show
		@category = Category.find(params[:id])
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