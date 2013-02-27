class CatalogController < ApplicationController
  def index
    @products = Product.vendible
  end

  def recommend
    @products = Product.recommend
  end
end
