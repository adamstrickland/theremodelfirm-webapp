class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :est_install_time_mins

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
