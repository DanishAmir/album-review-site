class Review < ActiveRecord::Base
    belongs_to :album
    belongs_to :user
    validates :stars, numericality: { less_than_or_equal_to: 5 }
end
