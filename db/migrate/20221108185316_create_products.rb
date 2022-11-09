class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :url_image
      t.float :price
      t.integer :discount
      t.belongs_to :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
