	# テーブル設計

## users テーブル

| Column               | Type   | Options                        |
| -------------------- | ------ | ------------------------------ |
| nickname             | string | null: false, foreign_key: true |
| email                | string | null: false, foreign_key: true |
| password             | string | null: false, foreign_key: true |
| first_name           | string | null: false, foreign_key: true |
| last_name            | string | null: false, foreign_key: true |
| birthday             | date   | null: false, foreign_key: true |
| phonetic_first_name  | string | null: false, foreign_key: true |
| phonetic_last_name   | string | null: false, foreign_key: true | 


### Association
- has_many :users
- has_many :product
- has_many :user_address

## product テーブル

| Column              | Type        | Options                           |
| ------------------- | ----------- | --------------------------------- |
| name                | string      | null: false                       |
| category            | string      | null: false                       |
| commodity_condition | string      | null: false                       |
| price               | integer     | null: false                       |
| exhibitor           | string      | null: false                       |
| description         | text        | null: false                       |
| integer_user_id     | string      | null: false, foreign_key: true    |

### Association
- belongs_to :users
- has_one :product
- has_one :user_address

## purchase テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ----------------------------- -|
| user_id             | references | null: false, foreign_key: true |
| product_id          | references | null: false, foreign_key: true | 


### Association
- has_one :purchase
- has_one :user_address
- belongs_to :users

## user_address テーブル

| Column              | Type   | Options                                 |
| ------------------- | ------ | --------------------------------------- |
| address             | string | null: false, foreign_key: true          |
| municipalities      | string | null: false, foreign_key: true          |
| building_number     | string | foreign_key: true                       |
| prefecture          | string | null: false, foreign_key: true          |
| user_id             | string | integer :user_id, foreign_key: true     |
| product_id          | string | integer :product_id, foreign_key: true  |

### Association
- has_one :purchase
- has_one :user_address
- belongs_to :users

## product_information

| Column              | Type   | Options                           |
| ------------------- | ------ | --------------------------------- |
| shipping charges    | string | null: false                       |
| area of delivery    | string | null: false                       |
| days until delivery | string | null: false                       |

### Association
- belongs_to :product

## comments テーブル

| Column          | Type       | Options                        |
| ----------------| ---------- | ------------------------------ |
| user            | references | null: false, foreign_key: true |
| product         | references | null: false, foreign_key: true |
| purchase        | references | null: false, foreign_key: true |



##  messages テーブル

| Column           | Type       | Options                        |
| -----------------| ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| text             | references | null: false, foreign_key: true |
