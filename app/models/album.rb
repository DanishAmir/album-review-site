class Album < ActiveRecord::Base
    belongs_to :user
    has_many :reviews
    validates :artist, presence: true
    validates :title, presence: true
    has_attached_file :image, styles: { :medium => "300x300#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
