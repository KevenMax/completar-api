class Usuario < ApplicationRecord
  belongs_to :campu, required: false
  belongs_to :curso, required: false
  
  before_save { self.email = email.downcase }
  validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create}, uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: { minimum: 6 }, confirmation: true, on: :create
  has_secure_password
end
