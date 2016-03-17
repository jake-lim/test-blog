class User < ActiveRecord::Base
  has_many :articles
  before_save {self.email = email.downcase} #turns all email values entered into lowercase

  validates :username, 
            presence: true, 
            length: {minimum: 3, maximum: 25}, 
            uniqueness: {case_sensitive: false}

#   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates_format_of :email, :with => /@/

  validates :email, 
            presence: true, 
            uniqueness: {case_sensitive: false},
            length: { maximum: 200}
 #          format: { with: VALID_EMAIL_REGEX }

end


#validate :cant_be_something
#def cant_be_something
#  errors.add(:string, "can't be something") if self.string == "something"
# end