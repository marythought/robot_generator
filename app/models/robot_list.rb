class RobotList < ActiveRecord::Base
  validates :name, presence: true
end
