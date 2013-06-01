# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address    :string(255)
#  city       :string(255)
#  state      :string(255)
#  zipcode    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :name, :state, :zip_code
end
