class Follower < ActiveRecord::Base
  belongs_to :user
  # not a fully fleshed-out self-join?
  belongs_to :follower
end
