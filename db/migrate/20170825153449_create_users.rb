class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :telephone
      t.string :role
      t.string :image_url

      t.timestamps
    end
  end
end
