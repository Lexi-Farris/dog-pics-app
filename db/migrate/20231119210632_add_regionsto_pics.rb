class AddRegionstoPics < ActiveRecord::Migration[7.0]
  def change
    add_column :pics, :native_region_id, :integer
  end
end
