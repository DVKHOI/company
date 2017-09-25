class AddImageToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :image1_url, :string, default: ""
    add_column :products, :image2_url, :string, default: ""
    add_column :products, :image3_url, :string, default: ""
  end
end
