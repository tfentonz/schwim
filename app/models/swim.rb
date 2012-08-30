class Swim < ActiveRecord::Base
  attr_accessible :concession_card, :kilometers, :pool_id, :program, :purchase, :swam_on

  has_one :pool

  validates :swam_on, :pool_id, :kilometers, :presence => true
  validates :kilometers, :numericality => true
  validates :concession_card, :numericality => { :only_integer => true }
end
