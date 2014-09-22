class User < ActiveRecord::Base
  has_many :oinks
  has_many :followers

  def following
    Follower.where("follower_id=?", self.id)
  end

  def oinks_from_who_i_follow
    list_of_oinks = []
    following.each do |followee|
      User.find(followee.user_id).oinks.each do |oink|
        list_of_oinks << oink
      end
    end
    # hell YEAH; Derek says this should be handled using ActiveRecord's
    #  capabilities (like 'order'), not done in Ruby
    list_of_oinks.sort_by(&:created_at).reverse
  end

  def following_ids
    following.map { |followee| followee.user_id }
  end

end
