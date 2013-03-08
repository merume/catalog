class CatalogController < ApplicationController
  def index
    @products = Product.vendible
    respond_to do |format|
      format.html
      format.xml { render xml: @products}
    end
  end

  def recommend
    @products = Product.recommend
  end

  def recent
    @products = Product.recent(5)
  end
end
