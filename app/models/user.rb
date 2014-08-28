class User < ActiveRecord::Base
  attr_accessible :email, :login, :name, :password
  has_many :stories
  has_many :votes
end
