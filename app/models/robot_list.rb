class RobotList < ActiveRecord::Base
  validates :name, presence: true
  validates_numericality_of :arms, :only_integer =>true,
                            :allow_blank => true,
                            :greater_than_or_equal_to =>0,
                            :message => "can't be negative, sorry"
end
