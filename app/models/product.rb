class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :image, :image_cache, :vendible, :recommend
  mount_uploader :image, ProductImageUploader

  validates_presence_of :name, :description
  validates_numericality_of :price ,:only_integer=>true, :greater_than_or_equal_to => 0
  validates_uniqueness_of :name
  validate :price_must_be_a_multiple_of_hundreds

scope :vendible, where(:vendible => true)
scope :recommend, where(:recommend => true)
scope :recent, lambda{ |limit = 5| where(:vendible => true).order("created_at desc").limit(limit) }

  private
  def price_must_be_a_multiple_of_hundreds
    unless price.to_i % 100 == 0
      errors.add :price, "must be a multiple of hundreds"
    end
  end
end
