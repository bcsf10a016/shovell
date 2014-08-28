class Story < ActiveRecord::Base
  attr_accessible :name, :desc
  validates_presence_of :name , :desc
  belongs_to :user
  has_many :votes do
  def latest
  	find :all , :order => 'id DESC' , :limit => 3
  end
end
  def to_param
	"#{id}-#{name.gsub(/\W/, '-').downcase}"
	end
end
