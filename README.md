	# テーブル設計

## users テーブル

| Column               | Type   | Options     |
| ----------------     | ------ | ----------- |
| nickname             | string | null: false |
| email                | string | null: false |
| password             | string | null: false |
| first name           | string | null: false |
| last name            | string | null: false |
| birthday             | string | null: false |
| phonetic first name  | string | null: false |
| phonetic last name   | string | null: false |


### Association
- belongs_to :users
- belongs_to :product


## product テーブル

| Column              | Type   | Options     |
| ----------------    | ------ | ----------- |
| product name        | string | null: false |
| category            | string | null: false |
| commodity condition | string | null: false |
| price               | string | null: false |
| exhibitor           | string | null: false |
| shipping charges    | string | null: false |
| area of delivery    | string | null: false |
| days until delivery | string | null: false |



## purchase テーブル

| Column              | Type   | Options     |
| ----------------    | ------ | ----------- |
| first name          | string | null: false |
| last name           | string | null: false |
| address             | string | null: false |
| method of payment   | string | null: false |
| user_id             | string | null: false |
| product_id          | string | null: false |
| phonetic first name | string | null: false |
| phonetic last name  | string | null: false |

### Association
- belongs_to :purchase
- belongs_to :user_address


## user_address テーブル

| Column              | Type   | Options     |
| ----------------    | ------ | ----------- |
| first name          | string | null: false |
| last name           | string | null: false |
| address             | string | null: false |
| municipalities      | string | null: false |
| building number     | string | null: false |
| prefecture          | string | null: false |
| user_id             | string | null: false |
| product_id          | string | null: false |
| phonetic first name | string | null: false |
| phonetic last name  | string | null: false |


## comments テーブル

| Column          | Type       | Options                        |
| ----------------| ---------- | ------------------------------ |
| user            | references | null: false, foreign_key: true |
| product         | references | null: false, foreign_key: true |
| purchase        | references | null: false, foreign_key: true |
| product         | references | null: false, foreign_key: true |


##  messages テーブル

| Column           | Type       | Options                        |
| -----------------| ---------- | ------------------------------ |
| user             | string     | null: false                    |
| text             | references | null: false, foreign_key: true |
