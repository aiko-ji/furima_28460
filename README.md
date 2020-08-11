	# テーブル設計

## users テーブル

| Column               | Type   | Options     |
| ----------------     | ------ | ----------- |
| nickname             | string | null: false, foreign_key: true|
| email                | string | null: false, foreign_key: true|
| password             | string | null: false, foreign_key: true|
| first_name           | string | null: false, foreign_key: true|
| last_name            | string | null: false, foreign_key: true|
| birthday             | date   | null: false, foreign_key: true|
| phonetic_first_name  | string | null: false, foreign_key: true|
| phonetic_last_name   | string | null: false, foreign_key: true|


### Association
- belongs_to :users
- belongs_to :product


## product テーブル

| Column              | Type    | Options     |
| ----------------    | ------  | ----------- |
| name                | string  | null: false |
| category            | string  | null: false |
| commodity_condition | string  | null: false |
| price               | integer | null: false |
| exhibitor           | string  | null: false |
| description         | text    | null: false |



## purchase テーブル

| Column              | Type       | Options                       |
| ----------------    | ---------- | ----------------------------- |
| user_id             | references | null: false, foreign_key: true|
| product_id          | references | null: false, foreign_key: true|


### Association
- belongs_to :purchase
- belongs_to :user_address


## user_address テーブル

| Column              | Type   | Options                       |
| ----------------    | ------ | ----------------------------- |
| address             | string | null: false, foreign_key: true|
| municipalities      | string | null: false, foreign_key: true|
| building_number     | string | foreign_key: true             |
| prefecture          | string | null: false, foreign_key: true|
| user_id             | string | null: false, foreign_key: true|
| product_id          | string | null: false, foreign_key: true|


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
| user             | string     | null: false, foreign_key: true |
| text             | references | null: false, foreign_key: true |
