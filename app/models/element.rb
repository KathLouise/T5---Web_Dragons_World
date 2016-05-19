class Element < ActiveRecord::Base
  belongs_to :user
  belongs_to :dragon
  
  validates :name, presence: true
  validates :dragon, presence:true
  def to_s
	name
  end
end
