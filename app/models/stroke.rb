class Stroke < ActiveRecord::Base
  belongs_to :user
  belongs_to :dragon

  validates :dragon, presence: true
  validates :name, presence: true
  validates :kind, presence: true

  def to_s
	"#{name} #{kind}"
  end
end
