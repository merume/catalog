class AddVendibleToProducts < ActiveRecord::Migration
  def change
    add_column :products, :vendible, :boolean, default: true
  end
end
