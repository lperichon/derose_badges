class User < ActiveRecord::Base
  has_and_belongs_to_many :badges

  validates :facebook_id, :presence => true

  def self.for(access_token, expires, facebook_id)
    u = find_or_create_by_facebook_id(facebook_id)

      #logger.info "expiration is" + current_facebook_user.client.expiration.to_s
      u.update_attributes(:access_token=>access_token,
                          :access_token_expires=>Time.at(expires))
    return u
  end

  def self.for_facebook_id(facebook_id)
    u = find_or_create_by_facebook_id(facebook_id)
    return u
  end

  def facebook
    @fb_user ||= Mogli::User.find(facebook_id)
  end
end
