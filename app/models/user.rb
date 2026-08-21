# frozen_string_literal: true

class User < ApplicationRecord
  extend Devise::Models
  
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  before_create { self.jti ||= SecureRandom.uuid }
end