class CreateHouseImages < ActiveRecord::Migration[5.1]
  def change
    create_table :house_images do |t|
      t.string :url
      t.references :section, foreign_key: true
      t.string :tags
      t.integer :score

      t.timestamps
    end
  end
end
