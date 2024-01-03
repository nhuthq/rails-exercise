class ProductsController < ApplicationController

  def index
    @products = Product.where(published: true)
  end

  def show
    @item = Product.find(params[:id])
    # Display a production with full details
  end

  def new

    @product = Product.new
    @categories = Category.all
  end

  def create
    product_params = params.require(:product).permit(
      :title,
      :description,
      :price,
      :published,
      :category_id
    )

    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'You have successfully create a Product'
      redirect_to products_url
    else
      flash.now[:notice] = 'There is an error in your form'
      render :new
    end
  end

  def edit
    # Display an edit product form
  end

  def update
    # Update a production and redirect to index
  end

  def destroy
    # Destroy a product in Database
  end
end
