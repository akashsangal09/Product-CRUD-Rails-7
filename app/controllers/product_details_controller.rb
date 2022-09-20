class ProductDetailsController < ApplicationController

	before_action :set_product, only: [:edit, :update, :show, :destroy] 

	def index
		@product = ProductDetail.all
	end

	def new
		@product = ProductDetail.new
	end

	def create
		@product = ProductDetail.new(product_params)
		if @product.save
			redirect_to product_details_path
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @product.update(product_params)
			redirect_to product_details_path
		else
			render :new
		end
	end

	def show 
	end

	def destroy
		if @product.destroy
			redirect_to product_details_path
		end
	end

	private

	def product_params
		params.require(:product_detail).permit(:name, :price, :description)
	end

	def set_product
		@product = ProductDetail.find_by(params[:id])
		rescue ActiveRecord::RecordNotFound => error
			redirect_to product_details_path, notic: error 	
	end
end
