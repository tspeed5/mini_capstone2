class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :product_id
      t.string :link

      t.timestamps
    end
  end
end
