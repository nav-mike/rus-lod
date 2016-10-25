class User < ActiveRecord::Base
  rolify

  devise :database_authenticatable, :rememberable, :trackable, :validatable

  default_scope { order(:email) }
end
