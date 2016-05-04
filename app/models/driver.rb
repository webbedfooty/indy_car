class Driver < ActiveRecord::Base
  validates :name, presence: true
  validates :team, presence: true
  validates :motor, presence: true
end
