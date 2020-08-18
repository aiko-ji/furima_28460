FactoryBot.define do
  factory :user do
    email                 {"yamdA-0.111@gmail.com"}
    password              {"abAB0000"}
    password_confirmation {password}
    nickname              {"yamada0123AB"}
    first_name            {"山田"}
    last_name             {"太郎"}
    birthday              {1988/04/26}
    phonetic_frist_name   {"ヤマダ"}
    phonetic_last_name    {"タロウ"}
  end
end