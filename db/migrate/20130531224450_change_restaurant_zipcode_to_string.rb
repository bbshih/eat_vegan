class ChangeRestaurantZipcodeToString < ActiveRecord::Migration
  change_table :restaurants do |t|  
    t.change :zipcode, :string
  end
end
