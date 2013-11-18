class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :password

  has_many :urls

  def self.exists?(email)
    User.find_by_email(email)
  end

  def self.authenticate(email, password)
    User.find_by_email_and_password(email, password)
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
  end

end
