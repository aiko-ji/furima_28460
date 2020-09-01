FactoryBot.define do
  factory :user do
    email                 {"yamdA-0.111@gmail.com"}
    password              {"abAB0000"}
    password_confirmation {"abAB0000"}
    nickname              {"yamada0123AB山田ヤマダやまだ"}
    first_name            {"山田やまだヤマダ"}
    last_name             {"太郎たろうタロウ"}
    birthday              {"1988/04/26"}
    phonetic_frist_name   {"ヤマダ"}
    phonetic_last_name    {"タロウ"}
  end
end