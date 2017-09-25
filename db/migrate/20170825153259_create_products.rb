class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image_url
      t.string :vote
      t.text :description
      t.string :user_id
      t.string :category_id

      t.timestamps
    end
  end
end
