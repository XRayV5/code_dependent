class User < ActiveRecord::Base
  # activerecord has the password digesting function for me
  has_secure_password
end