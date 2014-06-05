class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_create :create_remember_token

  #Validators
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name,  presence: true, length: { maximum: 100 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }

  #Let Rails do it's magic stuff with password_digest etc.
  has_secure_password

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end


  private
    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end
