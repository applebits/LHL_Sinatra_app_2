class User < ActiveRecord::Base

  validates :username, presence: true, length: { maximum: 40 }
  validates :password, presence: true, length: { maximum: 25 }

  
end