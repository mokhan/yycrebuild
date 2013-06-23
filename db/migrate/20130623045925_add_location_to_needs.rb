class AddLocationToNeeds < ActiveRecord::Migration
  def change
    add_column :needs, :address, :string
    add_column :needs, :latitude, :float
    add_column :needs, :longitude, :float
  end
end
