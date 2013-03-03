class CatalogController < ApplicationController
  def index
    @products = Product.vendible
  end

  def recommend
    @products = Product.recommend
  end

  def recent
    @products = Product.recent(5)
  end
end
