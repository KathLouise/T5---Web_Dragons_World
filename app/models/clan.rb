class Clan < ActiveRecord::Base
  belongs_to :user
  belongs_to :dragon
  has_many :dragons, dependent: :destroy

  validates :dragon, presence: true
  validates :name, presence: true
  validates :species, presence: true
  
  def to_s
	"#{name} #{species}"
  end  
end
