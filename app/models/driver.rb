class Driver < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :team, presence: true
  validates :motor, presence: true
end
