class Swim < ActiveRecord::Base
  attr_accessible :concession_card, :kilometers, :pool_id, :program, :purchase,
                  :swam_on

  belongs_to :pool

  after_initialize :init

  validates :swam_on, :presence => true
  validates :pool_id, :kilometers, :presence => true
  validates :kilometers, :numericality => true
  validates :concession_card, :numericality => { :only_integer => true },
            :allow_nil => true

  def init
    self.swam_on ||= Date.today
  end
end
