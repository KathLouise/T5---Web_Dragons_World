class Element < ActiveRecord::Base
  belongs_to :user
  belongs_to :dragon, :class_name => 'Dragon', :foreign_key => 'dragon_id' 
  
  validates :name, presence: true
  validates :dragon, uniqueness: true, presence:true
  def to_s
	name
  end
end
