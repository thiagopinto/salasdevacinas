class User < ApplicationRecord
  belongs_to :role
  has_secure_password
  validates :password, presence: true, confirmation: true, length: { minimum: 8 }, :on => :create
  validates :password, presence: true, confirmation: true, length: { minimum: 8, }, :on => :update, :if => :password_digest_changed?
  #validates_presence_of :password_confirmation, if: :password_changed?
end
