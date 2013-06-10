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
  validates :city, :address, :state, :name, :zip_code, presence: true
  validates :zip_code, length: {is: 5}, numericality: { only_integer: true }
end
