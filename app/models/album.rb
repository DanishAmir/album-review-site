class Album < ActiveRecord::Base
    belongs_to :user ## A user can make many albums and they have their user id displaying with this
    has_many :reviews ## An album will have many reviews
    validates :artist, presence: true ## Each album has an artist and cannot left be blank
    validates :title, presence: true ##Each album has a name, must be valid
    validates :year, presence: true ##Description can be null, because of the fact that its not required - a year must be provided else they cannot submit form
    has_attached_file :image, styles: { :medium => "300x300#" } ## has an attachment of the album cover
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/ ##validates all image types .jpg .png etc
end
