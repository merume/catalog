class CatalogController < ApplicationController
  def index
    @products = Product.vendible
  end
end
