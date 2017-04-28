class AddImagesToSites < ActiveRecord::Migration[5.0]
  def change
    add_column :sites, :images, :json
  end
end
