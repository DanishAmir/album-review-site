class Album < ActiveRecord::Base
  validates :year, numericality: { less_than_or_equal_to: 2017 } ##cannot review album which hasn't been released
  validates :year, numericality: { more_than_or_equal_to: 1947 } ##first studio album 
end
