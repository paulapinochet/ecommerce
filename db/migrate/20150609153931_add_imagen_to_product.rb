class AddImagenToProduct < ActiveRecord::Migration
  def change
    add_column :products, :imagen, :string
  end
end
