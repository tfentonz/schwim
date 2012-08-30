class Pool < ActiveRecord::Base
  attr_accessible :city, :name

  belongs_to :swim

  validates :name, :presence => true
  validates :city, :presence => true

  default_scope order("name asc")
end
