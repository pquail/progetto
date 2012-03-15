class CategoriesController < ApplicationController

  def index
  	@categories = Category.order("name asc").includes(:products)

  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories, :include => :products }
      format.xml {render xml: @categories, :include => :products}
    end

  end

  def show
  end
end
	