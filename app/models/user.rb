class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  

  has_secure_password

  def mood
  	self.nausea > self.happiness ? (return 'sad') : (return 'happy')
  end

end
