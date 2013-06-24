class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.string :image_url
      t.string :heading
      t.text :description
      t.string :author
      t.string :author_url
      t.integer :user_id
      t.timestamps
    end
  end
end
