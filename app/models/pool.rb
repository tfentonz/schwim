class Pool < ActiveRecord::Base
  attr_accessible :city, :name

  has_many :swims

  validates :name, :presence => true
  validates :city, :presence => true

  default_scope order("name asc")
end
