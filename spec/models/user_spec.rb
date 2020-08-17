require 'rails_helper'
describe User do
  before do
    @user = FactoryBot.build(:user)
  end
# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
  describe '#create' do
    it "emailとencrypted_passwordとnicknameとfirst_nameとlast_nameとbirthday
    phonetic_frist_nameとphonetic_last_nameが存在すれば登録できること" do
      expect(@user).to be_valid
    end

    it "nicknameが空だと登録できない" do
      @user.nickname = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it "first_nameが空だと登録できない" do
      @user.first_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("First_name can't be blank")
    end

    it "last_nameが空だと登録できない" do
      @user.last_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Last_name can't be blank")
    end

    it "birthdayが空だと登録できない" do
      @user.birthday = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
    end

    it "phonetic_frist_nameが空だと登録できない" do
      @user.phonetic_frist_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Phonetic_frist_name can't be blank")
    end

    it "phonetic_last_nameが空だと登録できない" do
      @user.phonetic_last_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Phonetic_last_name can't be blank")
    end
 end
end

