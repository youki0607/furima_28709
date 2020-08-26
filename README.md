# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | primary_key |
| password              | string  | null: false |
| family_name           | string  | null: false |
| first_name            | string  | null: false |
| family_name(katakana) | string  | null: false |
| first_name(katakana)  | string  | null: false |
| birthday              | date    | null: false |
| address               | string  | null: false |

### Association

- has_many :items
- has_one :buys



## items テーブル

| Column   | Type      | Options                        |
| -------- | --------- | ------------------------------ |
| name     | string    | null: false                    |
| image    | string    | null: false                    |
| text     | text      | null: false                    |
| price    | integer   | null: false                    |
| category | string    | null: false                    |
| status   | string    | null: false                    |
| postage  | string    | null: false                    |
| user_id  | reference | null: false, foreign_key: true |

### Association

- belongs_to :users
- has_one :buys



## buys テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| item_id               | references | null: false, foreign_key: true |
| exhibitor_id(user_id) | references | null: false, foreign_key: true |
| buyer_id(user_id)     | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :items
- has_one :deliverys



## deliverys テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| buyer_id(user_id)  | references | null: false, foreign_key: true |
| exhibitor(user_id) | references | null: false, foreign_key: true |
| buy_id             | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :buys