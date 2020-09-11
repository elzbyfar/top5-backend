class User < ApplicationRecord

  validates :username, presence: true
  validates :email, presence: true

  validates_length_of :username, minimum: 3, maximum: 32, allow_blank: false
  validates_length_of :password, minimum: 6, maximum: 32, allow_blank: false

end
