class User < ActiveRecord::Base
  attr_accessible :name, :provider, :secret, :token, :uid

  def self.create_with_omniauth(auth)
     create! do |user|
       user.provider = auth["provider"]
       user.uid = auth["uid"]
       user.name = auth["info"]["name"]
       user.token = auth["credentials"]["token"]
       user.secret = auth["credentials"]["secret"]
     end
  end
end
