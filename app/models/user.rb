class User < ActiveRecord::Base
  has_many :albums ## can make as many albums as they want
  has_many :reviews, dependent: :destroy ## has as many reviews as they want
  has_one :wishlist
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  
end
