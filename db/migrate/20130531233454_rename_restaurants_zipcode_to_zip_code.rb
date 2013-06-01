class RenameRestaurantsZipcodeToZipCode < ActiveRecord::Migration
  def up
    rename_column :restaurants, :zipcode, :zip_code
  end

  def down
    rename_column :restaurants, :zip_code, :zipcode
  end
end
