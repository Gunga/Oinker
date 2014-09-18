class User < ActiveRecord::Base
  has_many :oinks
  has_many :followers
end
 
