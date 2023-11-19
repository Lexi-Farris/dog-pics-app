class AddRegionstoPics < ActiveRecord::Migration[7.0]
  def change
    add_column :pics, :native_regions_id, :integer
  end
end
