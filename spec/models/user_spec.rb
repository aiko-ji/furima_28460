require 'rails_helper'
describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe '#create' do
    it "emailとencrypted_passwordとnicknameとfirst_nameとlast_nameとbirthday
    phonetic_frist_nameとphonetic_last_nameが存在すれば登録できること" do
      expect(@user).to be_valid
    end

    it "emailは空と＠を含まないと登録できない" do
      @user.email = "furiMa-0.111@gmail.com"
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it "nicknameは必須なので空だと登録できない" do
      @user.nickname = "furima0123AB"
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it "encrypted_passwordは６文字以上、半角英数混合、２回入力しないと登録できない" do
      @user.encrypted_password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("encrypted_password can't be blank")

    it "first_nameは全角（漢字・ひらがな・カタカナ）でないと登録できない" do
      @user.first_name = "漢字・ひらがな・カタカナ"
      @user.valid?
      expect(@user.errors.full_messages).to include("First_name can't be blank")
    end

    it "last_nameは全角（漢字・ひらがな・カタカナ）でないと登録できない" do
      @user.last_name = "漢字・ひらがな・カタカナ"
      @user.valid?
      expect(@user.errors.full_messages).to include("Last_name can't be blank")
    end

    it "birthdayは必須なので空だと登録できない" do
      @user.birthday = "1988/04/26"
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
    end

    it "phonetic_frist_nameは全角（カタカナ）出ないと登録できない" do
      @user.phonetic_frist_name = "カタカナ"
      @user.valid?
      expect(@user.errors.full_messages).to include("Phonetic_frist_name can't be blank")
    end

    it "phonetic_last_nameは全角（カタカナ）出ないと登録できない" do
      @user.phonetic_last_name = "カタカナ"
      @user.valid?
      expect(@user.errors.full_messages).to include("Phonetic_last_name can't be blank")
    end

    

 end
end

