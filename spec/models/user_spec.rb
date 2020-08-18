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
      @user.email = "FURIMA/MEALI"
      @user.valid?
      expect(@user.errors.full_messages).to include("Email @を含んで入力してください。")
    end

    it "nicknameは必須なので空だと登録できない" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname 空欄では登録できません。")
    end

    it "passwordは６文字以上、半角英数混合、２回入力しないと登録できない" do
      @user.password = "1111"
      @user.valid?
     expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "first_nameは全角（漢字・ひらがな・カタカナ）でないと登録できない" do
      @user.first_name = "zenkakumyouji"
      @user.valid?
      expect(@user.errors.full_messages).to include("First name 全角漢字・ひらがな・カタカナで入力してください。")
    end

    it "last_nameは全角（漢字・ひらがな・カタカナ）でないと登録できない" do
      @user.last_name = "zenkakunamae"
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name 全角漢字・ひらがな・カタカナで入力してください。")
    end

    it "birthdayは必須なので空だと登録できない" do
      @user.birthday = "&&&&"
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday 空欄では登録できません。")
    end

    it "phonetic_frist_nameは全角（カタカナ）出ないと登録できない" do
      @user.phonetic_frist_name = "katakana"
      @user.valid?
      expect(@user.errors.full_messages).to include("Phonetic frist name 全角カタカナで入力してください。")
    end

    it "phonetic_last_nameは全角（カタカナ）出ないと登録できない" do
      @user.phonetic_last_name = "katakana"
      @user.valid?
      expect(@user.errors.full_messages).to include("Phonetic last name 全角カタカナで入力してください。")
    end   
  end
end

