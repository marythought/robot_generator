class RobotList < ActiveRecord::Base
  validates :name, presence: true
  validates :arms,
end
