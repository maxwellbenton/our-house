class CreateHouseImages < ActiveRecord::Migration[5.1]
  def change
    create_table :house_images do |t|
      t.string :url
      t.string :tags
      t.string :type
      t.integer :score

      t.timestamps
    end
  end
end
