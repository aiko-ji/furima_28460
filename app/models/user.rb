class User < ApplicationRecord
  # validates :test, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :product

    validates :email, format:    { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "@を含んで入力してください。"}
    validates :password, format: { with: /\A[a-zA-Z0-9]+\z/, message: "空では登録できません。確認入力も行ってください。"}

    with_options presence: true do
      validates :nickname, format: { with: /\A[a-zA-Z0-9]+\z/, message:"空欄では登録できません。"}
      validates :birthday
    end
  
    with_options presence: true do
      validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message:"全角漢字・ひらがな・カタカナで入力してください。"}
      validates :last_name, format:  { with: /\A[ぁ-んァ-ン一-龥]/, message:"全角漢字・ひらがな・カタカナで入力してください。"}
    end

    with_options presence: true do
      validates :phonetic_frist_name, format: { with: /\A[ァ-ヶー－]+\z/, message:"全角カタカナで入力してください。"}
      validates :phonetic_last_name,  format: { with: /\A[ァ-ヶー－]+\z/, message:"全角カタカナで入力してください。"}
      
    end
end