class User < ActiveRecord::Base
  has_secure_password
  has_many :dragons, dependent: :destroy
  has_many :elements, dependent: :destroy
  has_many :strokes, dependent: :destroy
  has_many :clans, dependent: :destroy
  validates :username, presence:true
  validates :email, presence: true, uniqueness: true, format: {
              with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }
  validates :user_type, presence:true
  def to_s
	"#{username} #{user_type}"
  end
end
