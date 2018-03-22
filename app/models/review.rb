class Review < ActiveRecord::Base
    belongs_to :album ## a review will be based on an album
    belongs_to :user ## a user writes a review
    validates :stars, numericality: { less_than_or_equal_to: 5 } ## the minimum stars is 5, cannot be rated higher on a scale of 0-5 or lower
    scope :user_reviews, -> (user) { joins(:album).where(['user_id = ?', user.id]) }
end
