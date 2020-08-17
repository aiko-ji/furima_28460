class User < ApplicationRecord
  # validates :test, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email,               format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
  validates :encrypted_password,  format: { with: /\A[a-zA-Z0-9]+\z/}
  validates :encrypted_password,  length: { minimum: 6 }
  validates :nickname,            format: { with: /\A[a-zA-Z0-9]+\z/}
  validates :first_name,          format: { with: /\A[ぁ-んァ-ン一-龥]/}
  validates :birthday,            format: { with: /\A[a-zA-Z0-9]+\z/}
  validates :phonetic_frist_name, format: { with: /\A[ァ-ヶー－]+\z/}
  validates :phonetic_last_name,  format: { with: /\A[ァ-ヶー－]+\z/}


end
