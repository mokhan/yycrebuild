class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
